import axios from "axios";
import { useContext, useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { CartContext } from "./CartContext";

function ProductHome() {
  const [featureItemData, setFeatureItemData] = useState("");
  const { cartContext, setCartContext } = useContext(CartContext);

  useEffect(() => {
    axios
      .get("http://localhost:8080/laravel/laravel/public/api/product")
      .then((res) => {
        // console.log(res);
        setFeatureItemData(res.data.data);
        // console.log(featureItemData);
      });
  }, []);

  const handleAddToCart = (e) => {
    e.preventDefault();
    let obj = localStorage.getItem("obj");
    if (obj) {
      obj = JSON.parse(obj);
    } else obj = {};
    let objCon = {};
    objCon["id"] = e.target.id;
    if (obj[e.target.id]) {
      obj[e.target.id]["qty"]++;
      alert("San pham" + e.target.id + "+1");
    } else {
      obj[e.target.id] = objCon;
      obj[e.target.id]["qty"] = "1";
      alert("Them vao san pham" + e.target.id);
    }
    localStorage.setItem("obj", JSON.stringify(obj));
    console.log(obj);

    


    let  cartC = Object.keys(obj).length;
    setCartContext(cartC);

    // console.log(cartC);


    localStorage.setItem("cartC", cartC);
    // console.log(cartC);
    // localStorage.clear()
  };
  console.log(cartContext);
  const FeatureItem = () => {
    if (featureItemData)
      return Object.keys(featureItemData).map((value, key) => {
        const imag = JSON.parse(featureItemData[value].image);
        const imgLink =
          "http://localhost:8080/laravel/laravel/public/upload/user/product/" +
          featureItemData[value].id_user +
          "/" +
          imag[0];
        // console.log(imag);
        return (
          <div className="col-sm-4">
            <div className="product-image-wrapper">
              <div id={featureItemData[value].id} className="single-products">
                <div className="productinfo text-center">
                  <img src={imgLink} alt="" />
                  <h2>${featureItemData[value].price}</h2>
                  <p>{featureItemData[value].name}</p>
                  <a href="#" className="btn btn-default add-to-cart">
                    <i className="fa fa-shopping-cart"></i>Add to cart
                  </a>
                </div>
                <div className="product-overlay">
                  <div className="overlay-content">
                    <h2>${featureItemData[value].price}</h2>
                    <p>{featureItemData[value].name}</p>
                    <a
                      href="#"
                      className="btn btn-default add-to-cart"
                      id={featureItemData[value].id}
                      onClick={handleAddToCart}
                    >
                      <i className="fa fa-shopping-cart"></i>Add to cart
                    </a>
                  </div>
                </div>
              </div>
              <div className="choose">
                <ul className="nav nav-pills nav-justified">
                  <li>
                    <a href="#">
                      <i className="fa fa-plus-square"></i>Add to wishlist
                    </a>
                  </li>
                  <li>
                    <Link to={"ProductDetail/" + featureItemData[value].id}>
                      <i className="fa fa-plus-square"></i>More
                    </Link>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        );
      });
  };

  return (
    <div>
      <section id="slider">
        <div className="container">
          <div className="row">
            <div className="col-sm-12">
              <div
                id="slider-carousel"
                className="carousel slide"
                data-ride="carousel"
              >
                <ol className="carousel-indicators">
                  <li
                    data-target="#slider-carousel"
                    data-slide-to="0"
                    className="active"
                  ></li>
                  <li data-target="#slider-carousel" data-slide-to="1"></li>
                  <li data-target="#slider-carousel" data-slide-to="2"></li>
                </ol>

                <div className="carousel-inner">
                  <div className="item active">
                    <div className="col-sm-6">
                      <h1>
                        <span>E</span>-SHOPPER
                      </h1>
                      <h2>Free E-Commerce Template</h2>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiusmod tempor incididunt ut labore et
                        dolore magna aliqua.{" "}
                      </p>
                      <button type="button" className="btn btn-default get">
                        Get it now
                      </button>
                    </div>
                    <div className="col-sm-6">
                      <img
                        src="images/home/girl1.jpg"
                        className="girl img-responsive"
                        alt=""
                      />
                      <img
                        src="images/home/pricing.png"
                        className="pricing"
                        alt=""
                      />
                    </div>
                  </div>
                  <div className="item">
                    <div className="col-sm-6">
                      <h1>
                        <span>E</span>-SHOPPER
                      </h1>
                      <h2>100% Responsive Design</h2>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiusmod tempor incididunt ut labore et
                        dolore magna aliqua.{" "}
                      </p>
                      <button type="button" className="btn btn-default get">
                        Get it now
                      </button>
                    </div>
                    <div className="col-sm-6">
                      <img
                        src="images/home/girl2.jpg"
                        className="girl img-responsive"
                        alt=""
                      />
                      <img
                        src="images/home/pricing.png"
                        className="pricing"
                        alt=""
                      />
                    </div>
                  </div>

                  <div className="item">
                    <div className="col-sm-6">
                      <h1>
                        <span>E</span>-SHOPPER
                      </h1>
                      <h2>Free Ecommerce Template</h2>
                      <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing
                        elit, sed do eiusmod tempor incididunt ut labore et
                        dolore magna aliqua.{" "}
                      </p>
                      <button type="button" className="btn btn-default get">
                        Get it now
                      </button>
                    </div>
                    <div className="col-sm-6">
                      <img
                        src="images/home/girl3.jpg"
                        className="girl img-responsive"
                        alt=""
                      />
                      <img
                        src="images/home/pricing.png"
                        className="pricing"
                        alt=""
                      />
                    </div>
                  </div>
                </div>

                <a
                  href="#slider-carousel"
                  className="left control-carousel hidden-xs"
                  data-slide="prev"
                >
                  <i className="fa fa-angle-left"></i>
                </a>
                <a
                  href="#slider-carousel"
                  className="right control-carousel hidden-xs"
                  data-slide="next"
                >
                  <i className="fa fa-angle-right"></i>
                </a>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section>
        <div className="container">
          <div className="row">
            <div className="col-sm-3">
              <div className="left-sidebar">
                <h2>Category</h2>
                <div className="panel-group category-products" id="accordian">
                  <div className="panel panel-default">
                    <div className="panel-heading">
                      <h4 className="panel-title">
                        <a
                          data-toggle="collapse"
                          data-parent="#accordian"
                          href="#sportswear"
                        >
                          <span className="badge pull-right">
                            <i className="fa fa-plus"></i>
                          </span>
                          Sportswear
                        </a>
                      </h4>
                    </div>
                    <div id="sportswear" className="panel-collapse collapse">
                      <div className="panel-body">
                        <ul>
                          <li>
                            <a href="#">Nike </a>
                          </li>
                          <li>
                            <a href="#">Under Armour </a>
                          </li>
                          <li>
                            <a href="#">Adidas </a>
                          </li>
                          <li>
                            <a href="#">Puma</a>
                          </li>
                          <li>
                            <a href="#">ASICS </a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div className="panel panel-default">
                    <div className="panel-heading">
                      <h4 className="panel-title">
                        <a
                          data-toggle="collapse"
                          data-parent="#accordian"
                          href="#mens"
                        >
                          <span className="badge pull-right">
                            <i className="fa fa-plus"></i>
                          </span>
                          Mens
                        </a>
                      </h4>
                    </div>
                    <div id="mens" className="panel-collapse collapse">
                      <div className="panel-body">
                        <ul>
                          <li>
                            <a href="#">Fendi</a>
                          </li>
                          <li>
                            <a href="#">Guess</a>
                          </li>
                          <li>
                            <a href="#">Valentino</a>
                          </li>
                          <li>
                            <a href="#">Dior</a>
                          </li>
                          <li>
                            <a href="#">Versace</a>
                          </li>
                          <li>
                            <a href="#">Armani</a>
                          </li>
                          <li>
                            <a href="#">Prada</a>
                          </li>
                          <li>
                            <a href="#">Dolce and Gabbana</a>
                          </li>
                          <li>
                            <a href="#">Chanel</a>
                          </li>
                          <li>
                            <a href="#">Gucci</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>

                  <div className="panel panel-default">
                    <div className="panel-heading">
                      <h4 className="panel-title">
                        <a
                          data-toggle="collapse"
                          data-parent="#accordian"
                          href="#womens"
                        >
                          <span className="badge pull-right">
                            <i className="fa fa-plus"></i>
                          </span>
                          Womens
                        </a>
                      </h4>
                    </div>
                    <div id="womens" className="panel-collapse collapse">
                      <div className="panel-body">
                        <ul>
                          <li>
                            <a href="#">Fendi</a>
                          </li>
                          <li>
                            <a href="#">Guess</a>
                          </li>
                          <li>
                            <a href="#">Valentino</a>
                          </li>
                          <li>
                            <a href="#">Dior</a>
                          </li>
                          <li>
                            <a href="#">Versace</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div className="panel panel-default">
                    <div className="panel-heading">
                      <h4 className="panel-title">
                        <a href="#">Kids</a>
                      </h4>
                    </div>
                  </div>
                  <div className="panel panel-default">
                    <div className="panel-heading">
                      <h4 className="panel-title">
                        <a href="#">Fashion</a>
                      </h4>
                    </div>
                  </div>
                  <div className="panel panel-default">
                    <div className="panel-heading">
                      <h4 className="panel-title">
                        <a href="#">Households</a>
                      </h4>
                    </div>
                  </div>
                  <div className="panel panel-default">
                    <div className="panel-heading">
                      <h4 className="panel-title">
                        <a href="#">Interiors</a>
                      </h4>
                    </div>
                  </div>
                  <div className="panel panel-default">
                    <div className="panel-heading">
                      <h4 className="panel-title">
                        <a href="#">Clothing</a>
                      </h4>
                    </div>
                  </div>
                  <div className="panel panel-default">
                    <div className="panel-heading">
                      <h4 className="panel-title">
                        <a href="#">Bags</a>
                      </h4>
                    </div>
                  </div>
                  <div className="panel panel-default">
                    <div className="panel-heading">
                      <h4 className="panel-title">
                        <a href="#">Shoes</a>
                      </h4>
                    </div>
                  </div>
                </div>
                <div className="brands_products">
                  <h2>Brands</h2>
                  <div className="brands-name">
                    <ul className="nav nav-pills nav-stacked">
                      <li>
                        <a href="#">
                          {" "}
                          <span className="pull-right">(50)</span>Acne
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          {" "}
                          <span className="pull-right">(56)</span>Grüne Erde
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          {" "}
                          <span className="pull-right">(27)</span>Albiro
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          {" "}
                          <span className="pull-right">(32)</span>Ronhill
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          {" "}
                          <span className="pull-right">(5)</span>Oddmolly
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          {" "}
                          <span className="pull-right">(9)</span>Boudestijn
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          {" "}
                          <span className="pull-right">(4)</span>Rösch creative
                          culture
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>

                <div className="price-range">
                  <h2>Price Range</h2>
                  <div className="well text-center">
                    <input
                      type="text"
                      className="span2"
                      value=""
                      data-slider-min="0"
                      data-slider-max="600"
                      data-slider-step="5"
                      data-slider-value="[250,450]"
                      id="sl2"
                    />
                    <br />
                    <b className="pull-left">$ 0</b>{" "}
                    <b className="pull-right">$ 600</b>
                  </div>
                </div>

                <div className="shipping text-center">
                  <img src="images/home/shipping.jpg" alt="" />
                </div>
              </div>
            </div>

            <div className="col-sm-9 padding-right">
              <div className="features_items">
                <h2 className="title text-center">Features Items</h2>
                {FeatureItem()}
              </div>
              <div className="category-tab">
                <div className="col-sm-12">
                  <ul className="nav nav-tabs">
                    <li className="active">
                      <a href="#tshirt" data-toggle="tab">
                        T-Shirt
                      </a>
                    </li>
                    <li>
                      <a href="#blazers" data-toggle="tab">
                        Blazers
                      </a>
                    </li>
                    <li>
                      <a href="#sunglass" data-toggle="tab">
                        Sunglass
                      </a>
                    </li>
                    <li>
                      <a href="#kids" data-toggle="tab">
                        Kids
                      </a>
                    </li>
                    <li>
                      <a href="#poloshirt" data-toggle="tab">
                        Polo shirt
                      </a>
                    </li>
                  </ul>
                </div>
                <div className="tab-content">
                  <div className="tab-pane fade active in" id="tshirt">
                    <div className="col-sm-3">
                      <div className="product-image-wrapper">
                        <div className="single-products">
                          <div className="productinfo text-center">
                            <img src="images/home/gallery1.jpg" alt="" />
                            <h2>$56</h2>
                            <p>Easy Polo Black Edition</p>
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
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
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
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
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
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
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div className="tab-pane fade" id="blazers">
                    <div className="col-sm-3">
                      <div className="product-image-wrapper">
                        <div className="single-products">
                          <div className="productinfo text-center">
                            <img src="images/home/gallery4.jpg" alt="" />
                            <h2>$56</h2>
                            <p>Easy Polo Black Edition</p>
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
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
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
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
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div className="col-sm-3">
                      <div className="product-image-wrapper">
                        <div className="single-products">
                          <div className="productinfo text-center">
                            <img src="images/home/gallery1.jpg" alt="" />
                            <h2>$56</h2>
                            <p>Easy Polo Black Edition</p>
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div className="tab-pane fade" id="sunglass">
                    <div className="col-sm-3">
                      <div className="product-image-wrapper">
                        <div className="single-products">
                          <div className="productinfo text-center">
                            <img src="images/home/gallery3.jpg" alt="" />
                            <h2>$56</h2>
                            <p>Easy Polo Black Edition</p>
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
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
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div className="col-sm-3">
                      <div className="product-image-wrapper">
                        <div className="single-products">
                          <div className="productinfo text-center">
                            <img src="images/home/gallery1.jpg" alt="" />
                            <h2>$56</h2>
                            <p>Easy Polo Black Edition</p>
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
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
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div className="tab-pane fade" id="kids">
                    <div className="col-sm-3">
                      <div className="product-image-wrapper">
                        <div className="single-products">
                          <div className="productinfo text-center">
                            <img src="images/home/gallery1.jpg" alt="" />
                            <h2>$56</h2>
                            <p>Easy Polo Black Edition</p>
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
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
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
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
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
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
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <div className="tab-pane fade" id="poloshirt">
                    <div className="col-sm-3">
                      <div className="product-image-wrapper">
                        <div className="single-products">
                          <div className="productinfo text-center">
                            <img src="images/home/gallery2.jpg" alt="" />
                            <h2>$56</h2>
                            <p>Easy Polo Black Edition</p>
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
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
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
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
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div className="col-sm-3">
                      <div className="product-image-wrapper">
                        <div className="single-products">
                          <div className="productinfo text-center">
                            <img src="images/home/gallery1.jpg" alt="" />
                            <h2>$56</h2>
                            <p>Easy Polo Black Edition</p>
                            <a href="#" className="btn btn-default add-to-cart">
                              <i className="fa fa-shopping-cart"></i>Add to cart
                            </a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div className="recommended_items">
                <h2 className="title text-center">recommended items</h2>

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
                              <a
                                href="#"
                                className="btn btn-default add-to-cart"
                              >
                                <i className="fa fa-shopping-cart"></i>Add to
                                cart
                              </a>
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
                              <a
                                href="#"
                                className="btn btn-default add-to-cart"
                              >
                                <i className="fa fa-shopping-cart"></i>Add to
                                cart
                              </a>
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
                              <a
                                href="#"
                                className="btn btn-default add-to-cart"
                              >
                                <i className="fa fa-shopping-cart"></i>Add to
                                cart
                              </a>
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
                              <a
                                href="#"
                                className="btn btn-default add-to-cart"
                              >
                                <i className="fa fa-shopping-cart"></i>Add to
                                cart
                              </a>
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
                              <a
                                href="#"
                                className="btn btn-default add-to-cart"
                              >
                                <i className="fa fa-shopping-cart"></i>Add to
                                cart
                              </a>
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
                              <a
                                href="#"
                                className="btn btn-default add-to-cart"
                              >
                                <i className="fa fa-shopping-cart"></i>Add to
                                cart
                              </a>
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
          </div>
        </div>
      </section>
    </div>
  );
}
export default ProductHome;
