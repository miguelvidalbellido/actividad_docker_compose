import { createPool } from "mysql2/promise";

export const pool = createPool({
  host: "database",
  user: "root",
  password: "passwordDeAdmin",
  port: 3306,
  database: "customersdb",
});