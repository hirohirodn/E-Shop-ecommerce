import "./App.css";
import React, { useState } from "react";
import Header from "./Component/Layout/Header";
import Footer from "./Component/Layout/Footer";
import MenuLeft from "./Component/Layout/MenuLeft";
import { useLocation } from "react-router-dom";
import { CartContextProvider } from "./Component/Product/CartContext";
import { Provider } from "react-redux";

function App(props) {
  let params1 = useLocation();
  return (
    <CartContextProvider>
      {/* <Provider store={store}> */}
        <Header />
        <section>
          <div className="container">
            <div className="row">
              {/* {params1["pathname"].includes("account") ? "" : <MenuLeft />} */}
              {props.children}
            </div>
          </div>
        </section>
        <Footer />
      {/* </Provider> */}
    </CartContextProvider>
  );
}

export default App;
