foreach ($seed in 1..5) {
    
    # 打印当前正在运行的 seed，方便查看进度
    Write-Output "Running experiment with seed: $seed"
    
    # 执行 Python 脚本
    # PowerShell 使用反引号 ` 作为换行符
    python -m cs285.scripts.run_hw2 `
        --env_name InvertedPendulum-v4 -n 100 `
        --exp_name "pendulum_default_s$($seed)" `
        -rtg --use_baseline -na `
        --batch_size 5000 `
        --seed $seed `
	--video_log_freq 10
        
    Write-Output "------------------------------------------"
}

Write-Output "All experiments finished."