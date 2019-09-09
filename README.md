# 1. Introduction
***
generate_spdx can be used to upload source archives to fissology, and then, get spdx files by fossdriver.

# 2. Overview
***
This script generates spdx files by fossdriver.

# 3. Prepare

### 3.1 install fossology server (after 3.5.0)

Set up fossology server reference to https://www.fossology.org/get-started/.

# 4. Usage

```
./generate_spdx --help
usage: generate_spdx [-h] [-c CONFIG] [-d DST] [-f FOLDER] [-r] src

Upload the OSS archives to fosslogy server and download spdx files.

positional arguments:
  src                   The OSS archive or directory includes OSS archives that want to be scanned.

optional arguments:
  -h, --help            show this help message and exit
  -c CONFIG, --config CONFIG
                        username:passwd@fossology_server
                        By default, ~/.fossdriverrc will be read.
  -d DST, --dst DST     The directory where spdx files be output. By default, spdx file will output into the current directory.
  -f FOLDER, --folder FOLDER
                        Which directory on fossology server where OSS archives want to be uploaded.
  -r, --reuse           Reuse prior results from an earlier scan.

```
