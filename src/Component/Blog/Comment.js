import axios from "axios";
import { useState } from "react";
import { useNavigate } from "react-router-dom";

function Comment(props) {
  const data = props.data;
  const [comment, setComment] = useState("");

  // const comment = "123123";

  const handleComment = (e) => {
    setComment(e.target.value);
  };

  let navigate = useNavigate();

  let avai = localStorage.getItem("login");

  const userLogin = JSON.parse(localStorage.getItem("userLogin"));

  function checkLogin(e) {
    if (avai) {
      if (comment) {
        let url =
          "http://localhost:8080/laravel/laravel/public/api/blog/comment/" +
          data.id;

        let accessToken = userLogin.auth_token;

        let config = {
          headers: {
            Authorization: "Bearer " + accessToken,
            "Content-Type": "application/x-www-form-urlencoded",
            Accept: "application/json",
          },
        };
        const formData = new FormData();
        formData.append("id_blog", data.id);
        formData.append("id_user", userLogin.id);
        if(props.idReply){
          formData.append("id_comment", props.idReply);
        }
        else formData.append("id_comment", 0);
        formData.append("comment", comment);
        formData.append("name_user", userLogin.name);
        formData.append("image_user", userLogin.avatar);
        axios.post(url, formData, config).then((res) => {
          props.getDataCmt(res);
        });
        e.preventDefault();
      } else {
        e.preventDefault();
        alert("nhap comment");
      }
    } else navigate("/Login");
  }

  return (
    <div className="replay-box">
      <div className="row">
        <div className="col-sm-12">
          <h2>Leave a replay</h2>

          <div className="text-area" id="cmt">
            <div className="blank-arrow">
              <label>Your Name</label>
            </div>
            <span>*</span>
            <textarea
              name="message"
              rows="11"
              onChange={handleComment}
            ></textarea>
            <a className="btn btn-primary" href="" onClick={checkLogin}>
              post comment
            </a>
          </div>
        </div>
      </div>
    </div>
  );
}
export default Comment;
