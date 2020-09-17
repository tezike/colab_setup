#perl -pi -e 's|execution_count": null|execution_count": 1|g' course-v4/nbs/*ipynb
# ! jupyter labextension install @jupyter-widgets/jupyterlab-manager
get_ipython().system_raw('./ngrok http 6006 &')
! nohup jupyter notebook --no-browser --allow-root --ip="127.0.0.1" --port="6006" &
! python3 -c "import time; time.sleep(5)" &
!curl -s http://localhost:4040/api/tunnels | python3 -c "import sys, json; print(json.load(sys.stdin)['tunnels'][0]['public_url'])"
