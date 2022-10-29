import Error from "./FormError";
import { useState, useEffect } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";

function LoginForm() {
  const [inputs, setInputs] = useState("");
  const [errors, setErrors] = useState("");
  const [result, setResult] = useState("");

  let navigate = useNavigate();

  const handleInput = (e) => {
    const nameInput = e.target.name;
    const value = e.target.value;
    setInputs((state) => ({ ...state, [nameInput]: value }));
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    let errorSubmit = {};
    let flag = true;
    if (inputs.email == undefined) {
      flag = false;
      errorSubmit.email = "Vui long nhap email";
    }
    if (inputs.password == undefined) {
      flag = false;
      errorSubmit.password = "Vui long nhap password";
    }
    if (!flag) {
      setErrors(errorSubmit);
    }
    console.log(inputs);
    if (flag) {
      let objF = {};
      let result;
      objF.email = inputs.email;
      objF.password = inputs.password;
      objF.level = 0;
      axios
        .post("http://localhost:8080/laravel/laravel/public/api/login", objF)
        .then((res) => {
          result = res.data.response;
          if (result == "success") {
            alert("Dang nhap thanh cong");
            navigate("/");
            localStorage.setItem("login", true);
            console.log(res);
            let userLogin = {};
            userLogin.id = res.data.Auth.id;
            userLogin.name = res.data.Auth.name;  
            userLogin.address= res.data.Auth.address
            userLogin.password = inputs.password
            userLogin.phone= res.data.Auth.phone
            userLogin.email=res.data.Auth.email
            userLogin.avatar = res.data.Auth.avatar;
            userLogin.auth_token=res.data.success.token
            localStorage.setItem('userLogin', JSON.stringify(userLogin));
          } else alert("Sai tai khoan hoac mat khau");
        });
    }
  };
  return (
    <div className="col-sm-4 col-sm-offset-1">
      <div className="login-form">
        <Error errors={errors} />
        <h2>Login to your account</h2>
        <form action="#" onSubmit={handleSubmit}>
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
          <span>
            <input type="checkbox" className="checkbox" />
            Keep me signed in
          </span>
          <button type="submit" className="btn btn-default">
            Login
          </button>
        </form>
      </div>
    </div>
  );
}
export default LoginForm;
