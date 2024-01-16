import React, { useContext, useState } from "react";
import { MyContext } from "../Context";
import { Link, Redirect } from "react-router-dom";
export default function LoginPage({ history }) {
  const context = useContext(MyContext);
  const [data, setData] = useState({
    username: "",
    password: "",
  });

  if (context.isUserAuthenticated) {
    return <Redirect to="/" />;
  }
  return (
    
    <div class="form-container ">
      <div class="logo-container">Login</div>

      <form
        class="form"
        onSubmit={(event) => context.login(event, data, history)}
        
      >
        <div class="form-group">
          <p
            id="login-error-header"
            className="col-md-6 m-auto pb-2 font-weight-bold text-danger"
          ></p>
          <label htmlFor="inputUserName">Username</label>
          <input
            type="text"
            id="email"
            name="username"
            value={data.username}
            placeholder="Enter your email"
            onChange={(event) =>
              setData({ ...data, username: event.target.value })
            }
            required
          />
        </div>
        <div class="form-group">
          <p
            id="login-error-header"
            className="col-md-6 m-auto pb-2 font-weight-bold text-danger"
          ></p>
          <label htmlFor="inputPassword">Password</label>
          <input
            type="password"
            id="email"
            name="password"
            value={data.password}
            placeholder="Password"
            onChange={(event) =>
              setData({ ...data, password: event.target.value })
            }
            required
          />
        </div>

        <button class="form-submit-btn" type="submit">
          Login
        </button>
        <p>
          If you have not created an account yet
          <Link to="/register" className="text-decoration-none">
            {" "}
            Sign up{" "}
          </Link>
          first
        </p>
      </form>
    </div>
  );
}
