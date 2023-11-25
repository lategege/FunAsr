## Usage

```shell
# offline client
./funasr-wss-client --server-ip 127.0.0.1 --port 10095 --wav-path ../audio/asr_example.wav

# 2pass client
./funasr-wss-client-2pass --server-ip 127.0.0.1 --port 10095 --wav-path ../audio/asr_example.wav
```

## API-reference
```shell
./funasr-wss-client --server-ip <string>
                    --port <string>
                    --wav-path <string>
                    [--thread-num <int>]
                    [--hotword <string>]
                    [---is-ssl <`1` deflaut, where to connect with ssl, if set `0` to close ssl>] 
                    [--use-itn <int> use-itn is 1 means use itn, 0 means not use itn]


./funasr-wss-client-2pass --server-ip <string>
                    --port <string>
                    [--record <1 means use record>]
                    [--thread-num <int>]
                    [--hotword <string>]
                    [--is-ssl <`1` deflaut, where to connect with ssl, if set `0` to close ssl>] 
                    [--wav-path < the input could be: wav_path, e.g.: asr_example.wav;
                    pcm_path, e.g.: asr_example.pcm; wav.scp, kaldi style wav list (wav_id \t wav_path)>]
                    [--use-itn <int> use-itn is 1 means use itn, 0 means not use itn]

```

## How to build your websocket client
required openssl lib

```shell
apt-get install libssl-dev #ubuntu 
# yum install openssl-devel #centos
# brew install openssl (set system variable, e.g.: export OPENSSL_ROOT_DIR=/opt/homebrew/opt/openssl@1.1) #mac

cd websocket_client 
mkdir build && cd build
cmake  -DCMAKE_BUILD_TYPE=release ..
make
```
