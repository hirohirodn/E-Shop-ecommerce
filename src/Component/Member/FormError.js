import { useState } from "react";
function Error(props) {
 let {errors}=props
  function renderError() {
    if (Object.keys(errors).length > 0) {
      return Object.keys(errors).map((key, index) => {
        return <li key={index}>{errors[key]}</li>;
      });
    }
  }

  return (
    <ul>
      {renderError()}
    </ul>
  );
}

export default Error;
