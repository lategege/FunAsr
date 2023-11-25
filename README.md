# FunAsr Dockerfile

Use this DockerFile , you can build a docker image that can run directly ! 

`1.  git clone https://github.com/lategege/FunAsr.git`

`2.  cd FunAsr && docker build -t fun-asr:latest . `

`3.  docker run --name fun-asr -v $YOUR_PATH:/workspace/models -p 10095:10095 -d fun-asr:latest `

Wait a moment! Then you can use funasr_samples for testing!

e.g.
`4.  python3 funasr_wss_client.py --host "localhost" --port 10095 --mode offline --audio_in "../audio/asr_example.wav" `

<img width="962" alt="image" src="https://github.com/lategege/FunAsr/assets/10569560/0bafd92d-64f9-493d-8370-e1948fc6c4e1">
