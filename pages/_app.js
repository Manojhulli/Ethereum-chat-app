import "../styles/globals.css";

//INTERNAL IMPORT
import { ChatAppProvider } from "../Context/ethechatContext";
import { NavBar } from "../Components/index";

const MyApp = ({ Component, pageProps }) => (
  <div>
    <ChatAppProvider>
      <NavBar />
      <Component {...pageProps} />
    </ChatAppProvider>
  </div>
);

export default MyApp;
