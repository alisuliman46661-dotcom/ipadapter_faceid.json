FROM runpod/worker-comfyui:5.4.1-base

# No custom nodes required for this workflow

# Download model with verified URL
RUN comfy model download --url https://huggingface.co/SG161223/RealisticVisionV51/resolve/main/realisticVisionV51_v51VAE.safetensors --relative-path models/checkpoints --filename realisticVisionV51_v51VAE.safetensors

# Copy input assets
COPY input/ /comfyui/input/