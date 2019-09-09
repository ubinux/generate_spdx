# 1. Introduction
***
generate_spdx can be used to upload source archives to fossology server and then download spdx files by REAT API.

# 2. Overview
***
This script generates spdx files by fossology REST API.

# 3. Prepare

### 3.1 install fossology server (after 3.5.0)

Set up fossology server reference to https://www.fossology.org/get-started/.

### 3.2 create token on fossology server

Because REST API use token instead of user/pw format, so create token after login fossology by the following steps.
"Admin"->"Users"->"Edit User Account"->"Create a new token"
Then copy the created token.

# 3. Usage

If you don't want to input $TOKEN every time, you can set $TOKEN in your terminal likes the following:
```
$ export TOKEN=eyJ0eXAiOiJKV...
```

```
$ ./generate_spdx  --help
usage: generate_spdx [-h] [-c CONFIG] [-d DST] [-f FOLDER] [-r] src

Upload the OSS archives to fosslogy server and download spdx files.

positional arguments:
  src                   The OSS archive or directory includes OSS archives
                        that want to be scanned.

optional arguments:
  -h, --help            show this help message and exit
  -c CONFIG, --config CONFIG
                        $TOEKN@fossology_server 
                        By default:
                        $TOKEN will be read from environment.
                        fossology_server is 127.0.0.1.
  -d DST, --dst DST     The directory where spdx files be output. By default,
                        spdx file will output into the current directory.
  -f FOLDER, --folder FOLDER
                        Which directory on fossology server where OSS archives
                        want to be uploaded.
  -r, --reuse           Reuse prior results from an earlier scan.

```
Note
- For those huge source archives, maybe fail. Please increase the value of delaytime defined the script and have a try again.
