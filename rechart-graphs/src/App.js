import "./index.css";
import React from "react";
import data from "./Interactive_Graphs/Data_AB-Beta-Probability-Density-Function";
import {
  AreaChart,
  Area,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip
} from "recharts";


export default function App() {
  return (
    <AreaChart
      width={500}
      height={400}
      data={data}
      margin={{
        top: 10,
        right: 50,
        left: 0,
        bottom: 0
      }}
    >
      <CartesianGrid strokeDasharray="3 3" />
      <XAxis dataKey="name" />
      <YAxis />
      <Tooltip />
      <Area type="monotone" dataKey="uv" stroke="#301c44" fill="#301c44" />
    </AreaChart>
  );
}
