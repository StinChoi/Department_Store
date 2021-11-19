import React from "react";

// const Stores = (props) => {
//   const renderStores = () => {
//     return props.stores.map((store) => {
//       return (
//         <div>
//           <p> Store Name: {store.name} </p>
//           <p>Store ID: {store.id} </p>
//           <a href={`/stores/${store.id}`}> View </a>
//           <a href={`/stores/${store.id}/edit`}> Edit </a>
//           <a href={`/stores/${store.id}`} data-method="delete"> Delete </a>
//         </div>
//       );
//     })
//   }
//   return (
//     <div>
//       <p>View All Stores Here</p>
//       <a href='/stores/new'> New Store </a>
//       <a href='/'>Home</a>
//       {renderStores()}
//     </div>
//   )
// }

// export default Stores;


const Stores = (props) => {
  const displayStores = () => {
    console.log("hit")
    return props.stores.map((store) => {
      return (
        <div>
          <h1>{store.name}</h1>
          <h4>name: {store.name}</h4>
          {/* display the name of the dept store : then generate links for 
          each action */}
          <a href={`/stores/${store.id}`}>View Store</a>
          <br></br>
          <a href={`/stores/${store.id}/edit`}>Edit Store</a>
          <br></br>
          <a href={`/stores/${store.id}`} data-method="delete">Delete Store</a>
          <br></br>
          <a href={`/stores/${store.id}/topics`}>View Items</a>
        </div>
      );
    });
  };
  // Final export / Call display function inside with our JSX
  return (
    <div>
      <h1>Welcome, Department Stores Listed Below</h1>

      <a href="/stores/new">Please create a new Department</a>
      <br></br>
      {displayStores()}
    </div>
  );
};

export default Stores;