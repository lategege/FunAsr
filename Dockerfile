FROM registry.cn-hangzhou.aliyuncs.com/funasr_repo/funasr:funasr-runtime-sdk-cpu-0.3.0

ADD start-server.sh /workspace/start-server.sh

RUN chmod +x /workspace/start-server.sh

VOLUME /workspace/models

EXPOSE 10095

CMD ["/workspace/start-server.sh"]
