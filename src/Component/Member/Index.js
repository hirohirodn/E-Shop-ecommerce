import Register from "./Register";
import LoginForm from "./Login";

function Login() {
    return (
      <div>
        <section id="form">
          <div className="container">
            <div className="row">
              <LoginForm/>
              <div className="col-sm-1">
                <h2 className="or">OR</h2>
              </div>
              <Register/>
            </div>
          </div>
        </section>
      </div>
    );
  }
  export default Login;
  