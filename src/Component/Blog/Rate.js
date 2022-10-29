import { useState, useEffect } from "react";
import { useNavigate, useParams } from "react-router-dom";
import StarRatings from "react-star-ratings";
import axios from "axios";

function Rate(props) {
  let navigate = useNavigate();
  let params = useParams();
  const [rate, setRate] = useState(0);
  useEffect(() => {
    axios
      .get(
        "http://localhost:8080/laravel/laravel/public/api/blog/rate/" +
          params.id
      )
      .then((res) => {
        const dataRate = res.data.data;
        let sum = 0;
        if (Object.keys(dataRate).length>0) {
          Object.keys(dataRate).map((value, key) => {
            sum += dataRate[value].rate;
          });
          setRate(sum / Object.keys(dataRate).length);
        }
      })
      .catch(function (error) {
        console.log(error);
      });
  }, []);

  let avai = localStorage.getItem("login");

  const userLogin = JSON.parse(localStorage.getItem("userLogin"));

  function changeRating(newRating, name) {
    setRate(newRating);
    if (avai) {
      let url =
        "http://localhost:8080/laravel/laravel/public/api/blog/rate/" +
        params.id;

      let accessToken = userLogin.auth_token;

      let config = {
        headers: {
          Authorization: "Bearer " + accessToken,
          "Content-Type": "application/x-www-form-urlencoded",
          Accept: "application/json",
        },
      };
      const formData = new FormData();
      formData.append("blog_id", params.id);
      formData.append("user_id", userLogin.id);
      formData.append("rate", newRating);
      axios.post(url, formData, config).then((res) => {
        console.log(res);
      });
      console.log(newRating);
    } else navigate("/Login");
  }

  function Rating(e) {
    return (
      <StarRatings
        rating={rate}
        starRatedColor="blue"
        changeRating={changeRating}
        numberOfStars={5}
        name="rating"
      />
    );
  }

  return (
    <div className="rating-area">
      <ul className="ratings">
        <li className="rate-this">Rate this item:</li>
        <li>{Rating()}</li>
        <li className="color">(6 votes)</li>
      </ul>
      <ul className="tag">
        <li>TAG:</li>
        <li>
          <a className="color" href="">
            Pink <span>/</span>
          </a>
        </li>
        <li>
          <a className="color" href="">
            T-Shirt <span>/</span>
          </a>
        </li>
        <li>
          <a className="color" href="">
            Girls
          </a>
        </li>
      </ul>
    </div>
  );
}
export default Rate;
