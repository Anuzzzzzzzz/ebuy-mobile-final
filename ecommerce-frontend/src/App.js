// App.js
import React from "react";
import { Route, BrowserRouter as Router, Routes } from "react-router-dom";
import "./App.css";
import Cart from "./components/Cart";
import Dashboard from "./components/Dashboard"; // Import Dashboard component
import Home from "./components/Home";
import Login from "./components/Login";
import Menu from "./components/Menu"; // Import Menu component
import Navbar from "./components/Navbar";
import Register from "./components/Register";

function App() {
  return (
    <Router>
      <div className="App">
        <Navbar />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/register" element={<Register />} />
          <Route path="/login" element={<Login />} />
          <Route path="/dashboard" element={<Dashboard />} />{" "}
          {/* Add Dashboard route */}
          <Route path="/cart" element={<Cart />} />
          <Route path="/menu" element={<Menu />} /> {/* Add Menu route */}
        </Routes>
      </div>
    </Router>
  );
}

export default App;
