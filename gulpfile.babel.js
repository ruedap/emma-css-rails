import gulp from "gulp";
import fs from "fs";
import { execSync } from "child_process";

gulp.task("replace-emma", () => {
  execSync("rm -rf vendor/assets/stylesheets/emma.css/");
  execSync("mkdir vendor/assets/stylesheets/emma.css/");
  execSync(
    "cp node_modules/emma.css/emma.css vendor/assets/stylesheets/emma.css/emma.css"
  );
  execSync(
    "cp -r node_modules/emma.css/scss/ vendor/assets/stylesheets/emma.css/scss/"
  );
  const result = execSync(
    "sed -n '1,1p' vendor/assets/stylesheets/emma.css/emma.css"
  );
  console.log(result.toString());
});
