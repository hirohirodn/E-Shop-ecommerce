import axios from "axios";
import React from "react";
import { useEffect, useState } from "react";

function Cart() {
  const [data, setData] = useState("");
  const [qtyData, setQtyData] = useState("");
  let obj = localStorage.getItem("obj");
  if (obj) obj = JSON.parse(obj);
  // console.log(obj);
  useEffect(() => {
    axios
      .post(
        "http://localhost:8080/laravel/laravel/public/api/product/cart",
        obj
      )
      .then((res) => {
        let x = res.data.data;
        // console.log(x[0].qty.id);
        setData(x);
        //set data qty
        Object.keys(x).map((value, key) => {
          setQtyData((state) => ({
            ...state,
            [x[value].qty.id]: x[value].qty.qty,
          }));
        });
      });
  }, []);

  const handleQtyUp = (e) => {
    e.preventDefault();
    let id = e.target.id;
    qtyData[id]++;
    console.log(qtyData);
    setQtyData((state) => ({ ...state, [id]: qtyData[id] }));

    obj[id]["qty"]++;
    localStorage.setItem("obj", JSON.stringify(obj));
  };

  const handleQtyDown = (e) => {
    e.preventDefault();
    let id = e.target.id;
    if (qtyData[id] > 1) {
      qtyData[id]--;
      // setQtyData(qtyData);
      setQtyData((state) => ({ ...state, [id]: qtyData[id] }));
      obj[id]["qty"]--;
      localStorage.setItem("obj", JSON.stringify(obj));
    }
    if (qtyData[id] == 1) {
      setQtyData((state) => ({ ...state, [id]: qtyData[id] }));
      obj[id]["qty"] = 1;
      localStorage.setItem("obj", JSON.stringify(obj));
    }
    console.log(qtyData);
  };

  const totalAll = () => {
    let total = 0;
    let cart_Sub_Total = 59;
    let eco_Tax = 2;
    let shipping_Cost = 0;
    if (data) {
      Object.keys(data).map((value, key) => {
        let id = data[value].id;
        let price = data[value].price;
        let qty = qtyData[id];
        total = total + price * qty;
      });
    }
    return total + cart_Sub_Total + eco_Tax + shipping_Cost;
  };

  const deleteItem = (e) => {
    e.preventDefault();
    const id = e.target.id;
    const x= data.filter((value) => value.id != id)
    setData(x)
    delete obj[id];
    localStorage.setItem("obj", JSON.stringify(obj));
  };

  const CartFunction = () => {
    if (Object.keys(data).length > 0)
      return Object.keys(data).map((value, key) => {
        const imag = JSON.parse(data[value].image);
        const imgLink =
          "http://localhost:8080/laravel/laravel/public/upload/user/product/" +
          data[value].id_user +
          "/" +
          imag[0];
        let id = data[value].id;
        let price = data[value].price;
        let qty = qtyData[id];
        return (
          <tr>
            <td className="cart_product">
              <a href="">
                <img
                  src={imgLink}
                  style={{ width: "110px", height: "110px" }}
                  alt=""
                />
              </a>
            </td>
            <td className="cart_description">
              <h4>
                <a href="">{data[value].name}</a>
              </h4>
              <p>Web ID: {id}</p>
            </td>
            <td className="cart_price">
              <p>${price}</p>
            </td>
            <td className="cart_quantity">
              <div className="cart_quantity_button">
                <a
                  className="cart_quantity_up"
                  id={id}
                  href=""
                  onClick={handleQtyUp}
                >
                  {" "}
                  +{" "}
                </a>
                <input
                  className="cart_quantity_input"
                  type="text"
                  name="quantity"
                  id={id}
                  value={qty}
                  autocomplete="off"
                  size="2"
                />
                <a
                  className="cart_quantity_down"
                  id={id}
                  href=""
                  onClick={handleQtyDown}
                >
                  {" "}
                  -{" "}
                </a>
              </div>
            </td>
            <td className="cart_total">
              <p className="cart_total_price" style={{ float: "right" }}>
                ${price * qty}
              </p>
            </td>
            <td className="cart_delete">
              <a className="cart_quantity_delete" href="">
                <i className="fa fa-times" key={key} id={id} onClick={deleteItem}></i>
              </a>
            </td>
          </tr>
        );
      });
  };

  return (
    <>
      <section id="cart_items">
        <div className="container">
          <div className="breadcrumbs">
            <ol className="breadcrumb">
              <li>
                <a href="#">Home</a>
              </li>
              <li className="active">Shopping Cart</li>
            </ol>
          </div>
          <div className="table-responsive cart_info">
            <table className="table table-condensed">
              <thead>
                <tr className="cart_menu">
                  <td className="image">Item</td>
                  <td className="description"></td>
                  <td className="price">Price</td>
                  <td className="quantity">Quantity</td>
                  <td className="total">Total</td>
                  <td></td>
                </tr>
              </thead>
              <tbody>{CartFunction()}</tbody>
            </table>
          </div>
        </div>
      </section>

      <section id="do_action">
        <div className="container">
          <div className="heading">
            <h3>What would you like to do next?</h3>
            <p>
              Choose if you have a discount code or reward points you want to
              use or would like to estimate your delivery cost.
            </p>
          </div>
          <div className="row">
            <div className="col-sm-6">
              <div className="chose_area">
                <ul className="user_option">
                  <li>
                    <input type="checkbox" />
                    <label>Use Coupon Code</label>
                  </li>
                  <li>
                    <input type="checkbox" />
                    <label>Use Gift Voucher</label>
                  </li>
                  <li>
                    <input type="checkbox" />
                    <label>Estimate Shipping {"&"} Taxes</label>
                  </li>
                </ul>
                <ul className="user_info">
                  <li className="single_field">
                    <label>Country:</label>
                    <select>
                      <option>United States</option>
                      <option>Bangladesh</option>
                      <option>UK</option>
                      <option>India</option>
                      <option>Pakistan</option>
                      <option>Ucrane</option>
                      <option>Canada</option>
                      <option>Dubai</option>
                    </select>
                  </li>
                  <li className="single_field">
                    <label>Region / State:</label>
                    <select>
                      <option>Select</option>
                      <option>Dhaka</option>
                      <option>London</option>
                      <option>Dillih</option>
                      <option>Lahore</option>
                      <option>Alaska</option>
                      <option>Canada</option>
                      <option>Dubai</option>
                    </select>
                  </li>
                  <li className="single_field zip-field">
                    <label>Zip Code:</label>
                    <input type="text" />
                  </li>
                </ul>
                <a className="btn btn-default update" href="">
                  Get Quotes
                </a>
                <a className="btn btn-default check_out" href="">
                  Continue
                </a>
              </div>
            </div>
            <div className="col-sm-6">
              <div className="total_area">
                <ul>
                  <li id="cart_sub_total">
                    Cart Sub Total <span>$59</span>
                  </li>
                  <li id="eco_tax">
                    Eco Tax <span>$2</span>
                  </li>
                  <li id="shipping_cost">
                    Shipping Cost <span>Free</span>
                  </li>
                  <li id="total">
                    Total <span>${totalAll()}</span>
                  </li>
                </ul>
                <a className="btn btn-default update" href="">
                  Update
                </a>
                <a className="btn btn-default check_out" href="">
                  Check Out
                </a>
              </div>
            </div>
          </div>
        </div>
      </section>
    </>
  );
}
export default Cart;
