import axios from "axios";
import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";

function DeleteProduct(props) {
  const id = props.id;
  const config = props.config;
  const Del = (e) => {
    axios
      .get(
        "http://localhost:8080/laravel/laravel/public/api/user/delete-product/" +
          id,
        config
      )
      .then((res) => {
        console.log(res.data.data);
        props.Delete(res)
      });
      e.preventDefault()
  };

  return (
    <a href="" onClick={Del}>
      Delete
    </a>
  );
}
export default DeleteProduct;
