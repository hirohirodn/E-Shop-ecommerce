import axios from "axios";
import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import DeleteProduct from "./DeleteProduct";

function MyProduct() {
  const [data, setData] = useState("");
  const handleSubmit = () => {};
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
        "http://localhost:8080/laravel/laravel/public/api/user/my-product",
        config
      )
      .then((res) => {
        let x = res.data.data;
        console.log(res);
        setData(x);
      })
      .catch(function (error) {
        console.log(error);
      });
  }, []);

  const Delete=(x)=>{
    console.log(x);
     setData(x.data.data)
  }

  function ShowProduct() {
    if (data)
      return Object.keys(data).map((value, key) => {
        let x = JSON.parse(data[value].image);
        let imgLink =
          "http://localhost:8080/laravel/laravel/public/upload/user/product/" +
          data[value].id_user +
          "/" +
          x[0];
        return (
          <tr>
            <td className="id">
              <a href="">{data[value].id}</a>
            </td>
            <td className="name">
              <a>{data[value].name}</a>
            </td>
            <td className="image">
              <img style={{ width: "50px", height: "50px" }} src={imgLink} />
            </td>
            <td className="price">
              <p>{data[value].price}</p>
            </td>
            <td className="action">
              <div className="action_button">
                <Link to={"/EditProduct/"+data[value].id}>Edit</Link>
                <DeleteProduct id={data[value].id} config={config} Delete={Delete}/>
              </div>
            </td>
          </tr>
        );
      });
  }
  return (
    <section id="cart-items" className="col-sm-9">
      <div className="table-responsive cart_info">
        <form onSubmit={handleSubmit} encType="multipart/form-data">
          <table className="table table-condensed">
            <thead>
              <tr className="cart_menu">
                <td className="id">Id</td>
                <td className="name">Name</td>
                <td className="image">Image</td>
                <td className="price">Price</td>
                <td className="action">Action</td>
                <td></td>
              </tr>
            </thead>
            <tbody>{ShowProduct()}</tbody>
          </table>
          <button
            type="submit"
            style={{ float: "right" }}
            className="btn btn-default"
          >
            <Link to="/AddProduct">Add New</Link>
          </button>
        </form>
      </div>
    </section>
  );
}
export default MyProduct;
