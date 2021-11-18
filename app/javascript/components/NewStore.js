import React from "react"

const NewStore = (props) => {
  return (
    <div>
      <p>New Store form here</p>
      <a href="/">Home</a>
      <a href="/stores">Back to Stores</a>
      <form action="/stores" method="post">
        <p>Name</p>
        <input name="store[name]" />
        <button type="submit">Add Store</button>
      </form>
    </div>
  );
};

export default NewStore;