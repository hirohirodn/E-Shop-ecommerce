import React from "react";
import ReactDOM from "react-dom/client";
import "./index.css";

import App from "./App";
import reportWebVitals from "./reportWebVitals";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Login from "./Component/Member/Index";
import Blog from "./Component/Blog/Index";
import Detail from "./Component/Blog/Detail";
import UpdateAccount from "./Component/Member/UpdateAccount";
import MyProduct from "./Component/MyProduct/MyProduct";
import AddProduct from "./Component/MyProduct/AddProduct";
import EditProduct from "./Component/MyProduct/EditProduct";
import ProductHome from "./Component/Product/ProductHome";
import ProductDetail from "./Component/Product/ProducDetail";
import Cart from "./Component/Product/Cart";
import { Provider } from "react-redux";
import store from "./store";
import Index from "./page";
const root = ReactDOM.createRoot(document.getElementById("root"));
root.render(
  <React.StrictMode>
    <Router>
      <Provider store={store}>

      <App>
        <Routes>
          <Route index path='/' element={<ProductHome/>} />
          <Route path='/Login' element={<Login/>} />
          <Route path='/Account' element={<UpdateAccount/>}/>
          <Route path='/MyProduct' element={<MyProduct/>}/>
          <Route path='/EditProduct/:id' element={<EditProduct/>}/>
          <Route path='/ProductDetail/:id' element={<ProductDetail/>}/>
          <Route path='/Cart' element={<Cart/>}/>
          <Route path='/AddProduct' element={<AddProduct />}/>
          <Route path='/Blog' element={<Blog/>} />
          <Route path='/Blog/detail/:id' element={<Detail/>} />
          
          <Route path='/DEMO' element={<Index/>} />
          
        </Routes>
      </App>
      </Provider>

    </Router>
  </React.StrictMode>
);

reportWebVitals();
