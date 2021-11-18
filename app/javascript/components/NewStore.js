import React from "react"

const NewStore = () => {
  return (
    <div>
      <h3>New Store Form</h3>
      <a href="/stores">Homepage</a>
      <p>Please enter a new Department Store</p>
      <form action="/stores" method="post">
        <p>Store Name:</p>
        <input name="store[name]" placeholder="Enter New Store Name" />
        <button type="submit">Add</button>
      </form>
    </div>
  );
};

export default NewStore;