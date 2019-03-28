function [u_traj, x_traj, counter] = test_controller (A, B, K, x_init)
    u_traj = [];
    x_traj = [];
    counter = 0;
    x = x_init;
    while true
        u = -K * x;
        x = A * x + B * u
        u_traj = [u_traj, u];
        x_traj = [x_traj, norm(x)];
        counter += 1;
        if norm(x) < 0.01
            break
        end
    end
endfunction
