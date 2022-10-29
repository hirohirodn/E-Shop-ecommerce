import axios from "axios";
import React, { useEffect, useState } from "react";
import Error from "../Member/FormError";

function MyProduct() {
  const [inputs, setInputs] = useState(()=>{
    return{
      sale: 0
    }
  });
  const [errors, setErrors] = useState("");
  const [status, setStatus] = useState("1");
  const [brandCategory, setBrandCategory] = useState("");
  const [category, setCategory] = useState("");
  const [brand, setBrand] = useState("");
  const [avatar, setAvatar] = useState("");
  useEffect(() => {
    axios
      .get("http://localhost:8080/laravel/laravel/public/api/category-brand")
      .then((res) => {
        setBrandCategory(res.data);
      })
      .catch(function (error) {
        console.log(error);
      });
  }, []);

  const yy = ["png", "jpg", "jpeg", "PNG", "JPG"];
  let sizeFile = "";
  let typeFile = "";

  const handleFile = (e) => {
    const files = e.target.files;
    console.log(files);
    setAvatar(files);
  };

  const CategorySelect = () => {
    if (brandCategory)
      return (
        <select
          name="category"
          value={category}
          onChange={handleChangeCategory}
        >
          <option value="">Please choose category</option>
          {brandCategory.category.map((value, key) => {
            return <option value={value.id}>{value.category}</option>;
          })}
        </select>
      );
  };

  const BrandSelect = () => {
    if (brandCategory)
      return (
        <select name="brand" value={brand} onChange={handleChangeBrand}>
          <option value="">Please choose brand</option>
          {brandCategory.brand.map((value, key) => {
            return <option value={value.id}>{value.brand}</option>;
          })}
        </select>
      );
  };

  const handleInput = (e) => {
    const nameInput = e.target.name;
    const value = e.target.value;
    setInputs((state) => ({ ...state, [nameInput]: value }));
  };

  const handleChangeStatus = (e) => {
    setStatus(e.target.value);
  };
  const handleChangeCategory = (e) => {
    setCategory(e.target.value);
  };
  const handleChangeBrand = (e) => {
    setBrand(e.target.value);
  };

  const handleSubmit = (e) => {
    let flag = true;
    let errorSubmit = {};

    e.preventDefault();
    if (inputs.name == undefined) {
      flag = false;
      errorSubmit.name = "Vui long nhap ten";
    }
    if (inputs.price == undefined) {
      flag = false;
      errorSubmit.price = "Vui long nhap gia";
    }
    if (category == "") {
      flag = false;
      errorSubmit.category = "Vui long chon category";
    }
    if (brand == "") {
      flag = false;
      errorSubmit.brand = "Vui long chon brand";
    }
    if (inputs.company == undefined) {
      flag = false;
      errorSubmit.company = "Vui long nhap cong ty";
    }
    if (inputs.detail == undefined) {
      flag = false;
      errorSubmit.detail = "Vui long nhap detail";
    }
    if (avatar) {
      console.log(avatar);
      Object.keys(avatar).map((value,key)=>{
        sizeFile = avatar[value].size;
        typeFile = avatar[value].type.split("image/")[1];
        let  x=key+1
        if (yy.includes(typeFile) == false) {
          flag = false;

          /// ASK

          console.log(x);
          const error = "file "+{x}+ " khong hop le"
          errorSubmit.avatar = error;
        } else if (sizeFile > 1024 * 1024) {
          flag = false;
          errorSubmit.avatar = "kich thuoc file "+{x}+" lon";
        }
      })
    }
    if(avatar.length > 3){
      flag=false
      errorSubmit.avatar="chi duoc nhap toi da 3 file"
    }

    if (!flag) {
      setErrors(errorSubmit);
    } else {
      const userLogin = JSON.parse(localStorage.getItem("userLogin"));

      let accessToken = userLogin.auth_token;

      let config = {
        headers: {
          Authorization: "Bearer " + accessToken,
          "Content-Type": "application/x-www-form-urlencoded",
          Accept: "application/json",
        },
      };
      const formData = new FormData();
      formData.append("name", inputs.name);
      formData.append("price", inputs.price);
      formData.append("phone", inputs.phone);
      formData.append("company", inputs.company);
      formData.append("detail", inputs.detail);
      formData.append("status", status);
      formData.append("sale", inputs.sale);
      formData.append("category", category);
      formData.append("brand", brand);

      Object.keys(avatar).map((item, i) => {
        formData.append("file[]", avatar[item]);
        console.log(avatar[item]);
      });

      axios
        .post(
          "http://localhost:8080/laravel/laravel/public/api/user/add-product",
          formData,
          config
        )
        .then((res) => {
          console.log(res);
        });
      // alert("Add thanh cong")
    }
  };

  return (
    <div className="col-sm-9">
      <div className="signup-form">
        <h2>Add Product!</h2>
        <Error errors={errors} />
        <form onSubmit={handleSubmit} encType="multipart/form-data">
          <input
            type="text"
            placeholder="Name"
            name="name"
            onChange={handleInput}
          />
          <input
            type="text"
            placeholder="Price"
            name="price"
            onChange={handleInput}
          />

          {CategorySelect()}
          {BrandSelect()}
          <select value={status} onChange={handleChangeStatus}>
            <option value="1">new</option>
            <option value="0">sale</option>
          </select>
          {status == 0 && (
            <input
              type="text"
              placeholder="0"
              name="sale"
              onChange={handleInput}
            />
          )}

          <input
            type="text"
            placeholder="Company profile"
            name="company"
            onChange={handleInput}
          />
          <input
            type="file"
            placeholder="Chon tep"
            name="image"
            onChange={handleFile}
            multiple
          />
          <input
            type="textArea"
            placeholder="Detail"
            name="detail"
            onChange={handleInput}
          />

          <button type="submit" className="btn btn-default">
            Add New
          </button>
        </form>
      </div>
    </div>
  );
}
export default MyProduct;
