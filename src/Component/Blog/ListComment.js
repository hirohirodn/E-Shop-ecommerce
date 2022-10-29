function ListComment(props) {
  const comment = props.comment;

  function commentData() {
    if (Object.keys(comment).length > 0) {
      return comment.map((value, key) => {
        let imgLink =
          "http://localhost:8080/laravel/laravel/public/upload/user/avatar/" +
          value.image_user;
        if (value.id_comment == 0)
          return (
            <>
              <li className="media" key={key}>
                <a className="pull-left" href="#">
                  <img className="media-object" src={imgLink} alt="" />
                </a>
                <div className="media-body">
                  <ul className="sinlge-post-meta">
                    <li>
                      <i className="fa fa-user"></i>
                      {value.name_user}
                    </li>
                    <li>
                      <i className="fa fa-clock-o"></i> 1:33 pm
                    </li>
                    <li>
                      <i className="fa fa-calendar"></i> DEC 5, 2013
                    </li>
                  </ul>
                  <p>{value.comment}</p>
                  <a
                    className="btn btn-primary"
                    id={value.id}
                    href="#cmt"
                    onClick={(e) => {
                      props.getDataReply(e.target.id);
                    }}
                  >
                    <i className="fa fa-reply"></i>
                    Replay
                  </a>
                  {value.id}
                </div>
              </li>
              {comment.map((value2, key2) => {
                let imgLink =
                  "http://localhost:8080/laravel/laravel/public/upload/user/avatar/" +
                  value2.image_user;
                if (value2.id_comment == value.id)
                  return (
                    <li className="media second-media" key2={key2}>
                      <a className="pull-left" href="#">
                        <img className="media-object" src={imgLink} alt="" />
                      </a>
                      <div className="media-body">
                        <ul className="sinlge-post-meta">
                          <li>
                            <i className="fa fa-user"></i>
                            {value2.name_user}
                          </li>
                          <li>
                            <i className="fa fa-clock-o"></i> 1:33 pm
                          </li>
                          <li>
                            <i className="fa fa-calendar"></i> DEC 5, 2013
                          </li>
                        </ul>
                        <p>{value2.comment}</p>
                        <a className="btn btn-primary" id={value2.id} href="">
                          <i className="fa fa-reply"></i>Replay
                        </a>
                      </div>
                    </li>
                  );
                else return;
              })}
            </>
          );
        else return;
      });
    }
  }

  return (
    <div className="response-area">
      <h2>1 RESPONSES</h2>
      <ul className="media-list">{commentData()}</ul>
    </div>
  );
}
export default ListComment;
