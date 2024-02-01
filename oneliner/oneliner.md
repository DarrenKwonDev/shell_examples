# local http server

로컬 http 서버를 띄워서 같은 네트워크에 있는 다른 컴퓨터에서 접속할 수 있도록 한다.

```python
python -m http.server 8000
# 이후 해당 로컬 네트워크 대역에 있는 다른 컴퓨터가 python 서버를 띄운 컴퓨터의 private ip를 기반으로 접근 가능
```

# fork bomb

:() { :|:& };:
