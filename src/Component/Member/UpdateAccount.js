import axios from "axios";
import { useEffect, useState } from "react";
import Error from "./FormError";

function UpdateAccount() {
  const [inputs, setInputs] = useState(()=>{
    const userLogin = JSON.parse(localStorage.getItem("userLogin"))
    return {
      name: userLogin.name,
      password: userLogin.password,
      address: userLogin.address,
      phone: userLogin.phone,
    }
  });
  const [errors, setErrors] = useState("");
  const [avatar, setAvatar] = useState("");
  const [file, setFile] = useState("");
  const userLogin = JSON.parse(localStorage.getItem("userLogin"))
  const yy = ["png", "jpg", "jpeg", "PNG", "JPG"];
  let sizeFile = "";
  let typeFile = "";

  const handleInput = (e) => {
    const nameInput = e.target.name;
    const value = e.target.value;
    setInputs((state) => ({ ...state, [nameInput]: value }));
  };

  const handleFile = (e) => {
    const files = e.target.files
    let reader = new FileReader()
    reader.onload=(e)=>{
      setAvatar(e.target.result)
      setFile(files[0])
    }
    reader.readAsDataURL(files[0])
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    let errorSubmit = {};
    let flag = true;
    
    const formData = new FormData();

    if(avatar){
      console.log(avatar);
      sizeFile = file.size;
      typeFile = file.type.split("image/")[1];
      if (yy.includes(typeFile) == false) {
        flag = false;
        errorSubmit.avatar = "file khong hop le";
      } else if (sizeFile > 1024 * 1024) {
        flag = false;
        errorSubmit.avatar = "kich thuoc file lon";
      }
      else formData.append("avatar", avatar);
    }
    
    if (!flag) {
      setErrors(errorSubmit); 
    } else {
      let url =
      "http://localhost:8080/laravel/laravel/public/api/user/update/"
      +userLogin.id
      let accessToken = userLogin.auth_token;

      formData.append("id_user", userLogin.id);
      formData.append("email", userLogin.email);
      formData.append("name", inputs.name);
      formData.append("password", inputs.password);
      formData.append("phone", inputs.phone);
      formData.append("address", inputs.address);

      console.log(userLogin.password);

      let config = {
        headers: {
          Authorization: "Bearer " + accessToken,
          "Content-Type": "application/x-www-form-urlencoded",
          Accept: "application/json",
        },
      };


      axios.post( url, formData, config)
      .then((res)=>{
        console.log(res);
      userLogin.name = res.data.Auth.name
      userLogin.password = inputs.password
      userLogin.phone = res.data.Auth.phone
      userLogin.address = res.data.Auth.address
      userLogin.avatar = res.data.Auth.avatar
      localStorage.setItem('userLogin', JSON.stringify(userLogin))
        e.preventDefault()
      })
      // alert("Doi thong tin thanh cong");

    }
  };

  return (
      <div className="col-sm-4">
        <div className="signup-form">
          <Error errors={errors} />
          <h2>User Update!</h2>
          <form onSubmit={handleSubmit} encType="multipart/form-data">
            <input
              type="text"
              placeholder={userLogin.name}
              name="name"
              onChange={handleInput}
            />
            <input
              type="text"
              placeholder={userLogin.email}
              name="email"
              readOnly
              onChange={handleInput}
            />
            <input
              type="password"
              placeholder=""
              name="password"
              onChange={handleInput}
            />
            <input
              type="text"
              placeholder={userLogin.phone}
              name="phone"
              onChange={handleInput}
            />
            <input
              type="text"
              placeholder={userLogin.address}
              name="address"
              onChange={handleInput}
            />
            <input
              type="file"
              placeholder="Avatar"
              name="avatar"
              onChange={handleFile}
            />
            <button type="submit" className="btn btn-default">
              Update
            </button>
          </form>
        </div>
      </div>
  );
}
export default UpdateAccount;
