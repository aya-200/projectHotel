import React, { useContext, useState } from "react";
import TextInput from "../components/TextInput";
import { MyContext } from "../Context";
import { Redirect, Link } from "react-router-dom";
export default function RegisterPage({ history }) {
  const context = useContext(MyContext);
  const [data, setData] = useState({
    username: "",
    email: "",
    password1: "",
    password2: "",
  });
  const { username, email, password1, password2 } = data;
  if (context.isUserAuthenticated) {
    return <Redirect to="/" />;
  }

  return (
    <div className="form-container">
      <div class="logo-container">Register</div>
      <form
        onSubmit={(event) => context.register(event, data, history)}
        className="form"
      >
        <div className="form-group">
          <div className="form-group col-md-6 m-auto pb-3">
            <p
              className="text-uppercase text-danger font-weight-bold"
              id="register-message"
            ></p>
          </div>
        </div>
        <div className="form-group">
          <TextInput
            htmlForLabel="inputForUsername"
            labelName="Username"
            inputClass="form-control"
            inputType="text"
            inputName="username"
            inputValue={username}
            inputPlaceHolder="Enter Username"
            onChange={(event) =>
              setData({ ...data, username: event.target.value })
            }
            required={true}
          />
        </div>

        <div className="form-group">
          <TextInput
            htmlForLabel="inputForEmail"
            labelName="Email"
            inputClass="form-control"
            inputType="email"
            inputName="email"
            inputValue={email}
            inputPlaceHolder="Enter Email"
            onChange={(event) =>
              setData({ ...data, email: event.target.value })
            }
            required={true}
          />
        </div>

        <div className="form-group">
          <TextInput
            htmlForLabel="inputPassword1"
            labelName="Password"
            inputClass="form-control"
            inputType="password"
            inputName="password1"
            inputValue={password1}
            inputPlaceHolder="Enter Password"
            onChange={(event) =>
              setData({ ...data, password1: event.target.value })
            }
            required={true}
          />
        </div>

        <div className="form-group">
          <TextInput
            htmlForLabel="inputPassword2"
            labelName="Confirm"
            inputClass="form-control"
            inputType="password"
            inputName="password2"
            inputValue={password2}
            inputPlaceHolder="Confirm Password"
            onChange={(event) =>
              setData({ ...data, password2: event.target.value })
            }
            required={true}
          />
        </div>

        <div className="form-group">
          <button type="submit" className="form-submit-btn">
            Register
          </button>
          <p>
            Already have an account ?
            <Link to="/login" className="text-decoration-none">
              {" "}
              Login{" "}
            </Link>
            here
          </p>
        </div>
      </form>
    </div>
  );
}
