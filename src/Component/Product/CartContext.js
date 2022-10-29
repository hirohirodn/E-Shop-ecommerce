import React, { useState } from "react";
import { useContext } from "react";
const CartContext = React.createContext();

function CartContextProvider({ children }) {
  const [cartContext, setCartContext] = useState(() => {
    let cartC = localStorage.getItem("cartC");
    console.log(cartC);
    if (cartC) return cartC;
  });
  const value = { cartContext, setCartContext };

  return <CartContext.Provider value={value}>{children}</CartContext.Provider>;
}
export { CartContext, CartContextProvider };
