import axios from "axios";
import { useState } from "react";
import Error from "./FormError";

function Register() {
  const [inputs, setInputs] = useState("");
  const [errors, setErrors] = useState("");
  const [avatar, setAvatar] = useState("");
  const [file, setFile] = useState("");
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
    console.log(files[0]);
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
    let testup_mail = /^[A-Z0-9._%+-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i;

    if (inputs.email == undefined) {
      flag = false;
      errorSubmit.email = "Vui long nhap email";
    } else if (!testup_mail.test(inputs.email)) {
      flag = false;
      errorSubmit.email = "Vui long nhap email dung dinh dang";
    }
    if (inputs.password == undefined) {
      flag = false;
      errorSubmit.password = "Vui long nhap password";
    }
    if (inputs.name == undefined) {
      flag = false;
      errorSubmit.name = "Vui long nhap name";
    }
    if (inputs.phone == undefined) {
      flag = false;
      errorSubmit.phone = "Vui long nhap phone";
    }
    if (inputs.address == undefined) {
      flag = false;
      errorSubmit.address = "Vui long nhap address";
    }

    if(avatar){
      sizeFile = file.size;
      typeFile = file.type.split("image/")[1];
      if (yy.includes(typeFile) == false) {
        flag = false;
        errorSubmit.avatar = "file khong hop le";
      } else if (sizeFile > 1024 * 1024) {
        flag = false;
        errorSubmit.avatar = "kich thuoc file lon";
      }
    }
    else alert("nhap avatar")

    if (!flag) {
      setErrors(errorSubmit); 
    } else {
      alert("Dk thanh cong");
      let objF = {};
      objF.email = inputs.email;
      objF.password = inputs.password;
      objF.name = inputs.name;
      objF.phone = inputs.phone;
      objF.address = inputs.address;
      objF.avatar = avatar;
      objF.level = 0;
      console.log(objF);

      axios.post("http://localhost:8080/laravel/laravel/public/api/register", objF)
      .then((res)=>{
        console.log(res);
      })

      // localStorage.setItem("objF", JSON.stringify(objF));
    }
  };

  return (
    <>
      <div className="col-sm-4">
        <div className="signup-form">
          <Error errors={errors} />
          <h2>New User Signup!</h2>
          <form onSubmit={handleSubmit} encType="multipart/form-data">
            <input
              type="text"
              placeholder="Name"
              name="name"
              onChange={handleInput}
            />
            <input
              type="text"
              placeholder="Email"
              name="email"
              onChange={handleInput}
            />
            <input
              type="password"
              placeholder="Password"
              name="password"
              onChange={handleInput}
            />
            <input
              type="text"
              placeholder="Phone"
              name="phone"
              onChange={handleInput}
            />
            <input
              type="text"
              placeholder="Address"
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
              Signup
            </button>
          </form>
        </div>
      </div>
      <form></form>
    </>
  );
}
export default Register;
