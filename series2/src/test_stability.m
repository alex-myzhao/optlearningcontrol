function [x_traj] = test_stability (A, x_init)
    x_traj = [];
    x = x_init;
    while true
        x = A * x
        x_traj = [x_traj, norm(x)];
        if norm(x) < 0.01
            break
        end
    end
endfunction
