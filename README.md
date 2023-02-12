# Build

`docker build -t caffe:gpu caffe-master-fermi-cuda80-nccl134`

# Run

`docker run --gpus all -it --rm -v $HOME/workspace:/workspace caffe:gpu`

# CIFAR-10 Performance

## Nvidia Quadro 5000

### caffe train --solver=examples/cifar10/cifar10_full_solver.prototxt -gpu 0
```
I0212 02:44:48.561890  6165 solver.cpp:239] Iteration 200 (6.31997 iter/s, 31.6457s/200 iters), loss = 1.89175
I0212 02:44:48.561942  6165 solver.cpp:258]     Train net output #0: loss = 1.89175 (* 1 = 1.89175 loss)
I0212 02:44:48.561949  6165 sgd_solver.cpp:112] Iteration 200, lr = 0.001
I0212 02:45:20.207566  6165 solver.cpp:239] Iteration 400 (6.32006 iter/s, 31.6453s/200 iters), loss = 1.47472
I0212 02:45:20.207605  6165 solver.cpp:258]     Train net output #0: loss = 1.47472 (* 1 = 1.47472 loss)
I0212 02:45:20.207608  6165 sgd_solver.cpp:112] Iteration 400, lr = 0.001
```

### caffe train --solver=examples/cifar10/cifar10_full_solver.prototxt -gpu all
```
I0212 02:46:34.641150  6172 solver.cpp:239] Iteration 200 (6.02966 iter/s, 33.1694s/200 iters), loss = 2.04302
I0212 02:46:34.641172  6172 solver.cpp:258]     Train net output #0: loss = 2.04302 (* 1 = 2.04302 loss)
I0212 02:46:34.641187  6172 sgd_solver.cpp:112] Iteration 200, lr = 0.001
I0212 02:46:56.045014  6177 data_layer.cpp:73] Restarting data prefetching from start.
I0212 02:47:07.822744  6172 solver.cpp:239] Iteration 400 (6.02749 iter/s, 33.1813s/200 iters), loss = 1.5609
I0212 02:47:07.822785  6172 solver.cpp:258]     Train net output #0: loss = 1.5609 (* 1 = 1.5609 loss)
I0212 02:47:07.822798  6172 sgd_solver.cpp:112] Iteration 400, lr = 0.001
```
