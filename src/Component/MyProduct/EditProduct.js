import axios from "axios";
import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import Error from "../Member/FormError";

function EditProduct() {
  let params = useParams();
  const [inputs, setInputs] = useState("");
  const [errors, setErrors] = useState("");
  const [status, setStatus] = useState("1");
  const [data, setData] = useState("");
  const [brandCategory, setBrandCategory] = useState("");
  const [category, setCategory] = useState("");
  const [brand, setBrand] = useState("");
  const [avatar, setAvatar] = useState("");
  const [newAvatar, setNewAvatar] = useState("");
  const [isChecked, setIsChecked] = useState("");
  const [deleteImage, setDeleteImage] = useState({});

  const userLogin = JSON.parse(localStorage.getItem("userLogin"));

  let accessToken = userLogin.auth_token;

  let config = {
    headers: {
      Authorization: "Bearer " + accessToken,
      "Content-Type": "application/x-www-form-urlencoded",
      Accept: "application/json",
    },
  };
  useEffect(() => {
    axios
      .get(
        "http://localhost:8080/laravel/laravel/public/api/user/product/" +
          params.id,
        config
      )
      .then((res) => {
        // console.log(res.data.data);
        const x = res.data.data;
        setBrand(x.id_brand);
        setCategory(x.id_category);
        setInputs(() => {
          return {
            name: x.name,
            detail: x.detail,
            price: x.price,
            company: x.company_profile,
            sale: x.sale,
            id: x.id_user,
          };
        });
        setStatus(x.status);
        setAvatar(x.image);
        setIsChecked(new Array(x.image.length).fill(false));
      })
      .catch(function (error) {});
  }, []);

  // console.log(isChecked);
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
    // console.log(files);
    setNewAvatar(files);
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

  const DeleteImage = (e) => {
    return Object.keys(avatar).map((value, key) => {
      const imgDel =
        "http://localhost:8080/laravel/laravel/public/upload/user/product/" +
        inputs.id +
        "/" +
        avatar[value];
      return (
        <div
          style={{
            width: "50px",
            display: "inline-block",
            marginRight: "30px",
          }}
        >
          <img src={imgDel} style={{ width: "50px", height: "50px" }} />
          <input
            type="checkbox"
            name={key + 1}
            value={avatar[value]}
            checked={isChecked[key]}
            onChange={() => handleDelete(key)}
          />
        </div>
      );
    });
  };

  const handleDelete = (position, e) => {
    const updatedCheckedState = isChecked.map((item, index) =>
      index === position ? !item : item
    );
    setIsChecked(updatedCheckedState);
    const imgChecked = updatedCheckedState.reduce(
      (sum, currentState, index) => {
        if (currentState === true) {
          sum[index] = avatar[index];
          return sum;
        }
        return sum;
      },
      {}
    );
    setDeleteImage(imgChecked);
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
    if (status == 1) inputs.sale = 0;
    if (inputs.company == undefined) {
      flag = false;
      errorSubmit.company = "Vui long nhap cong ty";
    }
    if (inputs.detail == undefined) {
      flag = false;
      errorSubmit.detail = "Vui long nhap detail";
    }
    if (newAvatar) {
      sizeFile = newAvatar[0].size;
      typeFile = newAvatar[0].type.split("image/")[1];
      if (yy.includes(typeFile) == false) {
        flag = false;
        errorSubmit.newAvatar = "file khong hop le";
      } else if (sizeFile > 1024 * 1024) {
        flag = false;
        errorSubmit.newAvatar = "kich thuoc file lon";
      }
    }
    else {flag = false
    errorSubmit.newAvatar="phai upload hinh"}
    const lengthNewAvatar = Object.keys(newAvatar).length;

    const lengthAvatar = Object.keys(avatar).length;

    const lengthDelImage = Object.keys(deleteImage).length;
    console.log(lengthAvatar);
    console.log(lengthNewAvatar);
    console.log(lengthDelImage);
    if (lengthAvatar + lengthNewAvatar - lengthDelImage > 3) {
      flag = false;
      errorSubmit.submitAvatar = "Tong hinh khong duoc lon hon 3";
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

      // Object.keys(avatar).map((item, i) => {
      //   formData.append("file[]", avatar[item]);
      //   console.log(avatar[item]);
      // });

      if (Object.keys(newAvatar).length > 0) {
        Object.keys(newAvatar).map((item, i) => {
          formData.append("file[]", newAvatar[item]);
          console.log(newAvatar[item]);
        });
      }

      if (Object.keys(deleteImage).length > 0) {
        Object.keys(deleteImage).map((item, i) => {
          formData.append("avatarCheckBox[]", deleteImage[item]);
          console.log(deleteImage[item]);
        });
      }

      axios
        .post(
          "http://localhost:8080/laravel/laravel/public/api/user/edit-product/" +
            params.id,
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
        <h2>Edit Product!</h2>
        <Error errors={errors} />
        <form onSubmit={handleSubmit} encType="multipart/form-data">
          <input
            type="text"
            placeholder={inputs.name}
            name="name"
            onChange={handleInput}
          />
          <input
            type="text"
            placeholder={inputs.price}
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
              placeholder={inputs.sale}
              name="sale"
              onChange={handleInput}
            />
          )}

          <input
            type="text"
            placeholder={inputs.company}
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
          <div className="file delete">
            Delete image
            {DeleteImage()}
          </div>

          <input
            type="textArea"
            placeholder={inputs.detail}
            name="detail"
            onChange={handleInput}
          />

          <button type="submit" className="btn btn-default">
            Edit
          </button>
        </form>
      </div>
    </div>
  );
}
export default EditProduct;
