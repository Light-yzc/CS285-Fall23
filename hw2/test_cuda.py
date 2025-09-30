import torch
print("torch", torch.__version__)
print("cuda available:", torch.cuda.is_available())
print("torch device_count:", torch.cuda.device_count())
for i in range(torch.cuda.device_count()):
    print(i, torch.cuda.get_device_name(i))
    print(torch.cuda.get_device_properties(i))