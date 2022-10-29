import axios from "axios";
import React from "react";
import { useEffect, useState } from "react";
import { Link, useParams } from "react-router-dom";
import Modal from "react-modal";
import { PopupboxManager, PopupboxContainer } from "react-popupbox";

function ProductDetail() {
  const [data, setData] = useState("");
  const [imge, setImge] = useState("");
  const [brand, setBrand] = useState("");
  const [active, setActive] = useState(false)
  const [categoryBrand, setCategoryBrand] = useState("");
  let params = useParams();

  useEffect(() => {
    axios
      .get(
        "http://localhost:8080/laravel/laravel/public/api/product/detail/" +
          params.id
      )
      .then((res) => {
        console.log(res);
        setData(res.data.data);
        const x = res.data.data;
        const imag = JSON.parse(x.image);
        const imgLink =
          "http://localhost:8080/laravel/laravel/public/upload/user/product/" +
          x.id_user +
          "/" +
          imag[0];
        setImge(imgLink);

        const idBrand = x.id_brand - 1;
        if (categoryBrand) setBrand(categoryBrand.brand[idBrand].brand);
      });
  }, []);

  useEffect(() => {
    axios
      .get("http://localhost:8080/laravel/laravel/public/api/category-brand")
      .then((res) => {
        console.log(res.data);
        setCategoryBrand(res.data);
      })
      .catch(function (error) {
        console.log(error);
      });
  }, []);

  const handleClick = (e) => {
    e.preventDefault();
    setImge(e.target.src);
    console.log(imge);
  };

  // const handleZoom = () => {
  //   const content = <img url={imge}/>;
  //   console.log(imge);
  //   PopupboxManager.open({
  //     content,
  //     config: {
  //       titleBar: {
  //         enable: true,
  //         text: "Meow!",
  //       },
  //       fadeIn: true,
  //       fadeInSpeed: 500,
  //     },
  //   });
  // };

  const customStyles = {
    content: {
      top: "50%",
      left: "50%",
      right: "auto",
      bottom: "auto",
      marginRight: "-50%",
      transform: "translate(-50%, -50%)",
  
    },
  };

  // Modal.setAppElement('#yourAppElement')
  let subtitle;
  const [modalIsOpen, setIsOpen] = React.useState(false);

  function openModal(e) {
    e.preventDefault()
    setIsOpen(true);
  }

  function closeModal() {
    setIsOpen(false);
  }

  const handleActive=()=>{
    setActive(true)
  }

  const Detail = () => {
    if (data) {
      const imag = JSON.parse(data.image);
      const className= active? "active": ""
      return (
        <>
          <div className="product-details">
            <div className="col-sm-5">
              <div className="view-product">
                <img src={imge} alt="" />
                <a href="" onClick={openModal} rel="prettyPhoto">
                  <h3>ZOOM</h3>
                </a>
                <Modal
                  isOpen={modalIsOpen}
                  onAfterOpen=""
                  onRequestClose={closeModal}
                  style={customStyles}
                  contentLabel="Example Modal"
                  closeTimeoutMS={200}
                >
                  <img src={imge} style={{width: "400px", height: "600px"}} alt="" />
                  <button onClick={closeModal} style={{display:"block"}}>close</button>
                </Modal>
              </div>
              <div
                id="similar-product"
                className="carousel slide"
                data-ride="carousel"
              >
                <div className="carousel-inner">
                  <div className="item active">
                    {imag.map((value, key) => {
                      const imgLink =
                        "http://localhost:8080/laravel/laravel/public/upload/user/product/" +
                        data.id_user +
                        "/" +
                        value;
                      return (
                        <a href="">
                          <img
                            src={imgLink}
                            style={{ width: "65px", height: "65px" }}
                            alt=""
                            onClick={handleClick}
                          />
                        </a>
                      );
                    })}
                  </div>
                  {/* <div className="item">
                    <a href="">
                      <img src="images/product-details/similar1.jpg" alt="" />
                    </a>
                    <a href="">
                      <img src="images/product-details/similar2.jpg" alt="" />
                    </a>
                    <a href="">
                      <img src="images/product-details/similar3.jpg" alt="" />
                    </a>
                  </div> */}
                </div>

                <a
                  className="left item-control"
                  href="#similar-product"
                  data-slide="prev"
                >
                  <i className="fa fa-angle-left"></i>
                </a>
                <a
                  className="right item-control"
                  href="#similar-product"
                  data-slide="next"
                >
                  <i className="fa fa-angle-right"></i>
                </a>
              </div>
            </div>
            <div className="col-sm-7">
              <div className="product-information">
                <img
                  src="images/product-details/new.jpg"
                  className="newarrival"
                  alt=""
                />
                <h2>{data.name}</h2>
                <p>WEB ID: {data.id}</p>
                <img src="images/product-details/rating.png" alt="" />
                <span>
                  <span>US ${data.price}</span>
                  <label>Quantity:</label>
                  <input type="text" value="3" />
                  <button type="button" className="btn btn-fefault cart">
                    <i className="fa fa-shopping-cart"></i>
                    Add to cart
                  </button>
                </span>
                <p>
                  <b>Availability:</b> In Stock
                </p>
                <p>
                  <b>Condition:</b> New
                </p>
                <p>
                  <b>Brand:</b> {categoryBrand && brand}
                </p>
                <a href="">
                  <img
                    src="images/product-details/share.png"
                    className="share img-responsive"
                    alt=""
                  />
                </a>
              </div>
            </div>
          </div>

          <div className="category-tab shop-details-tab">
            <div className="col-sm-12">
              <ul className="nav nav-tabs">
                <li className="active">
                  <a href="#details"  data-toggle="tab">
                    Details
                  </a>
                </li>
                <li>
                  <a href="#companyprofile" data-toggle="tab">
                    Company Profile
                  </a>
                </li>
                <li>
                  <a href="#tag" data-toggle="tab">
                    Tag
                  </a>
                </li>
                <li className="">
                  <a href="#reviews" data-toggle="tab">
                    Reviews (5)
                  </a>
                </li>
              </ul>
            </div>
            <div className="tab-content">
              <div className="tab-pane fade" id="details">
                <div className="col-sm-3">
                  <div className="product-image-wrapper">
                    <div className="single-products">
                      <div className="productinfo text-center">
                        <img src="images/home/gallery1.jpg" alt="" />
                        <h2>$56</h2>
                        <p>Easy Polo Black Edition</p>
                        <button
                          type="button"
                          className="btn btn-default add-to-cart"
                        >
                          <i className="fa fa-shopping-cart"></i>Add to cart
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
                <div className="col-sm-3">
                  <div className="product-image-wrapper">
                    <div className="single-products">
                      <div className="productinfo text-center">
                        <img src="images/home/gallery2.jpg" alt="" />
                        <h2>$56</h2>
                        <p>Easy Polo Black Edition</p>
                        <button
                          type="button"
                          className="btn btn-default add-to-cart"
                        >
                          <i className="fa fa-shopping-cart"></i>Add to cart
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
                <div className="col-sm-3">
                  <div className="product-image-wrapper">
                    <div className="single-products">
                      <div className="productinfo text-center">
                        <img src="images/home/gallery3.jpg" alt="" />
                        <h2>$56</h2>
                        <p>Easy Polo Black Edition</p>
                        <button
                          type="button"
                          className="btn btn-default add-to-cart"
                        >
                          <i className="fa fa-shopping-cart"></i>Add to cart
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
                <div className="col-sm-3">
                  <div className="product-image-wrapper">
                    <div className="single-products">
                      <div className="productinfo text-center">
                        <img src="images/home/gallery4.jpg" alt="" />
                        <h2>$56</h2>
                        <p>Easy Polo Black Edition</p>
                        <button
                          type="button"
                          className="btn btn-default add-to-cart"
                        >
                          <i className="fa fa-shopping-cart"></i>Add to cart
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div className="tab-pane fade" id="companyprofile">
                <div className="col-sm-3">
                  <div className="product-image-wrapper">
                    <div className="single-products">
                      <div className="productinfo text-center">
                        <img src="images/home/gallery1.jpg" alt="" />
                        <h2>$56</h2>
                        <p>Easy Polo Black Edition</p>
                        <button
                          type="button"
                          className="btn btn-default add-to-cart"
                        >
                          <i className="fa fa-shopping-cart"></i>Add to cart
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
                <div className="col-sm-3">
                  <div className="product-image-wrapper">
                    <div className="single-products">
                      <div className="productinfo text-center">
                        <img src="images/home/gallery3.jpg" alt="" />
                        <h2>$56</h2>
                        <p>Easy Polo Black Edition</p>
                        <button
                          type="button"
                          className="btn btn-default add-to-cart"
                        >
                          <i className="fa fa-shopping-cart"></i>Add to cart
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
                <div className="col-sm-3">
                  <div className="product-image-wrapper">
                    <div className="single-products">
                      <div className="productinfo text-center">
                        <img src="images/home/gallery2.jpg" alt="" />
                        <h2>$56</h2>
                        <p>Easy Polo Black Edition</p>
                        <button
                          type="button"
                          className="btn btn-default add-to-cart"
                        >
                          <i className="fa fa-shopping-cart"></i>Add to cart
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
                <div className="col-sm-3">
                  <div className="product-image-wrapper">
                    <div className="single-products">
                      <div className="productinfo text-center">
                        <img src="images/home/gallery4.jpg" alt="" />
                        <h2>$56</h2>
                        <p>Easy Polo Black Edition</p>
                        <button
                          type="button"
                          className="btn btn-default add-to-cart"
                        >
                          <i className="fa fa-shopping-cart"></i>Add to cart
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div className="tab-pane fade" id="tag">
                <div className="col-sm-3">
                  <div className="product-image-wrapper">
                    <div className="single-products">
                      <div className="productinfo text-center">
                        <img src="images/home/gallery1.jpg" alt="" />
                        <h2>$56</h2>
                        <p>Easy Polo Black Edition</p>
                        <button
                          type="button"
                          className="btn btn-default add-to-cart"
                        >
                          <i className="fa fa-shopping-cart"></i>Add to cart
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
                <div className="col-sm-3">
                  <div className="product-image-wrapper">
                    <div className="single-products">
                      <div className="productinfo text-center">
                        <img src="images/home/gallery2.jpg" alt="" />
                        <h2>$56</h2>
                        <p>Easy Polo Black Edition</p>
                        <button
                          type="button"
                          className="btn btn-default add-to-cart"
                        >
                          <i className="fa fa-shopping-cart"></i>Add to cart
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
                <div className="col-sm-3">
                  <div className="product-image-wrapper">
                    <div className="single-products">
                      <div className="productinfo text-center">
                        <img src="images/home/gallery3.jpg" alt="" />
                        <h2>$56</h2>
                        <p>Easy Polo Black Edition</p>
                        <button
                          type="button"
                          className="btn btn-default add-to-cart"
                        >
                          <i className="fa fa-shopping-cart"></i>Add to cart
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
                <div className="col-sm-3">
                  <div className="product-image-wrapper">
                    <div className="single-products">
                      <div className="productinfo text-center">
                        <img src="images/home/gallery4.jpg" alt="" />
                        <h2>$56</h2>
                        <p>Easy Polo Black Edition</p>
                        <button
                          type="button"
                          className="btn btn-default add-to-cart"
                        >
                          <i className="fa fa-shopping-cart"></i>Add to cart
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div className="tab-pane fade active in" id="reviews">
                <div className="col-sm-12">
                  <ul>
                    <li>
                      <a href="">
                        <i className="fa fa-user"></i>EUGEN
                      </a>
                    </li>
                    <li>
                      <a href="">
                        <i className="fa fa-clock-o"></i>12:41 PM
                      </a>
                    </li>
                    <li>
                      <a href="">
                        <i className="fa fa-calendar-o"></i>31 DEC 2014
                      </a>
                    </li>
                  </ul>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                    sed do eiusmod tempor incididunt ut labore et dolore magna
                    aliqua.Ut enim ad minim veniam, quis nostrud exercitation
                    ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis
                    aute irure dolor in reprehenderit in voluptate velit esse
                    cillum dolore eu fugiat nulla pariatur.
                  </p>
                  <p>
                    <b>Write Your Review</b>
                  </p>

                  <form action="#">
                    <span>
                      <input type="text" placeholder="Your Name" />
                      <input type="email" placeholder="Email Address" />
                    </span>
                    <textarea name=""></textarea>
                    <b>Rating: </b>{" "}
                    <img src="images/product-details/rating.png" alt="" />
                    <button
                      type="button"
                      className="btn btn-default pull-right"
                    >
                      Submit
                    </button>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </>
      );
    }
  };

  return (
    <div className="col-sm-9 padding-right">
      <div className="recommended_items">
        <h2 className="title text-center">recommended items</h2>
        {Detail()}
        <div
          id="recommended-item-carousel"
          className="carousel slide"
          data-ride="carousel"
        >
          <div className="carousel-inner">
            <div className="item active">
              <div className="col-sm-4">
                <div className="product-image-wrapper">
                  <div className="single-products">
                    <div className="productinfo text-center">
                      <img src="images/home/recommend1.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button
                        type="button"
                        className="btn btn-default add-to-cart"
                      >
                        <i className="fa fa-shopping-cart"></i>Add to cart
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <div className="col-sm-4">
                <div className="product-image-wrapper">
                  <div className="single-products">
                    <div className="productinfo text-center">
                      <img src="images/home/recommend2.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button
                        type="button"
                        className="btn btn-default add-to-cart"
                      >
                        <i className="fa fa-shopping-cart"></i>Add to cart
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <div className="col-sm-4">
                <div className="product-image-wrapper">
                  <div className="single-products">
                    <div className="productinfo text-center">
                      <img src="images/home/recommend3.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button
                        type="button"
                        className="btn btn-default add-to-cart"
                      >
                        <i className="fa fa-shopping-cart"></i>Add to cart
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div className="item">
              <div className="col-sm-4">
                <div className="product-image-wrapper">
                  <div className="single-products">
                    <div className="productinfo text-center">
                      <img src="images/home/recommend1.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button
                        type="button"
                        className="btn btn-default add-to-cart"
                      >
                        <i className="fa fa-shopping-cart"></i>Add to cart
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <div className="col-sm-4">
                <div className="product-image-wrapper">
                  <div className="single-products">
                    <div className="productinfo text-center">
                      <img src="images/home/recommend2.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button
                        type="button"
                        className="btn btn-default add-to-cart"
                      >
                        <i className="fa fa-shopping-cart"></i>Add to cart
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <div className="col-sm-4">
                <div className="product-image-wrapper">
                  <div className="single-products">
                    <div className="productinfo text-center">
                      <img src="images/home/recommend3.jpg" alt="" />
                      <h2>$56</h2>
                      <p>Easy Polo Black Edition</p>
                      <button
                        type="button"
                        className="btn btn-default add-to-cart"
                      >
                        <i className="fa fa-shopping-cart"></i>Add to cart
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <a
            className="left recommended-item-control"
            href="#recommended-item-carousel"
            data-slide="prev"
          >
            <i className="fa fa-angle-left"></i>
          </a>
          <a
            className="right recommended-item-control"
            href="#recommended-item-carousel"
            data-slide="next"
          >
            <i className="fa fa-angle-right"></i>
          </a>
        </div>
      </div>
    </div>
  );
}
export default ProductDetail;
