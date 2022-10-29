import { useState, useEffect } from "react";
import axios from "axios";
import { useParams } from "react-router-dom";
import ListComment from "./ListComment";
import Comment from "./Comment";
import Rate from "./Rate"

function Detail() {
  let params = useParams();
  const [data, setData] = useState("");
  const [comment, setComment] = useState([]);
  const [idReply, setIdReply] = useState("");

  useEffect(() => {
    axios
      .get(
        "http://localhost:8080/laravel/laravel/public/api/blog/detail/" +
          params.id
      )
      .then((res) => {
        setData(res.data.data);
        setComment(res.data.data.comment);
      })
      .catch(function (error) {
        console.log(error);
      });
  }, []);

  function getDataCmt(x) {
    let xx = comment.concat(x.data.data);
      setComment(xx)
  }

  function getDataReply(x){
    console.log(x);
    setIdReply(x)
  }

 

  let imgLink =
    "http://localhost:8080/laravel/laravel/public/upload/Blog/image/" +
    data.image;

  return (
    <div class="col-sm-9">
      <div className="blog-post-area">
        <h2 className="title text-center">Latest From our Blog</h2>
        <div className="single-blog-post">
          <h3>{data.title}</h3>
          <div className="post-meta">
            <ul>
              <li>
                <i className="fa fa-user"></i> Mac Doe
              </li>
              <li>
                <i className="fa fa-clock-o"></i> 1:33 pm
              </li>
              <li>
                <i className="fa fa-calendar"></i> DEC 5, 2013
              </li>
            </ul>
          </div>
          <a href="">
            <img src={imgLink} alt="" />
          </a>
          <p>{data.content}</p>
          <br />
          <p></p>
          {data.description}
          <br />
          <p></p>
          <br />
          <p></p>
          <div className="pager-area">
            <ul className="pager pull-right">
              <li>
                <a href="#">Pre</a>
              </li>
              <li>
                <a href="#">Next</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <Rate/>
      <ListComment comment={comment} getDataReply={getDataReply}/>
      <Comment data={data} getDataCmt={getDataCmt} idReply={idReply}/>
    </div>
  );
}
export default Detail;
