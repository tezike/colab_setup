#perl -pi -e 's|execution_count": null|execution_count": 1|g' course-v4/nbs/*ipynb
jupyter labextension install @jupyter-widgets/jupyterlab-manager
nohup jupyter notebook --no-browser --allow-root --ip=$ADDR --port $PORT&