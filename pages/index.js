
// import React,{useEffect, useState, useContext} from "react";

// import { ChatAppContect } from "../Context/ChatAppContext";

// import { Filter, Friend } from "../Components/index";

// const ethchatapp =() =>{
//   const {title} = useContext(ChatAppContect);
//   return(
//     <div>{title}</div>
//   )
// }

// export default ethchatapp

import React, { useEffect, useState, useContext } from "react";

//INTERNAL IMPORT
import { ChatAppContect } from "../Context/ChatAppContext";
import { Filter, Friend } from "../Components/index";

const ChatApp = () => {
   const {title} = useContext(ChatAppContect);
  return (
    <div>
      {title}
      {/* <Filter />
      <Friend /> */}
    </div>
  );
};

export default ChatApp;
