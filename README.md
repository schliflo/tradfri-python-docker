# IKEA Tradfri python docker
Docker image for controlling your IKEA tradfri lights

## Usage
Run `docker run -ti -e GATEWAY_IP="<YOUR_GATEWAY_IP_HERE>" -e GATEWAY_KEY="<YOUR_GATEWAY_KEY_HERE>" schliflo/tradfri-python-docker ./tradfri-status.py` to get the status of your lights.
You can control groups via `docker run -ti -e GATEWAY_IP="<YOUR_GATEWAY_IP_HERE>" -e GATEWAY_KEY="<YOUR_GATEWAY_KEY_HERE>" schliflo/tradfri-python-docker ./tradfri-groups.py` and individual lights with `docker run -ti -e GATEWAY_IP="<YOUR_GATEWAY_IP_HERE>" -e GATEWAY_KEY="<YOUR_GATEWAY_KEY_HERE>" schliflo/tradfri-python-docker ./tradfri-lights.py`.

To make things easier you add aliases for some common actions:
```
alias lights_off="docker run -ti -e GATEWAY_IP="<YOUR_GATEWAY_IP_HERE>" -e GATEWAY_KEY="<YOUR_GATEWAY_KEY_HERE>" schliflo/tradfri-python-docker ./tradfri-groups.py -a power -g <YOUR_GROUP_ID> -v off"
alias lights_on="docker run -ti -e GATEWAY_IP="<YOUR_GATEWAY_IP_HERE>" -e GATEWAY_KEY="<YOUR_GATEWAY_KEY_HERE>" schliflo/tradfri-python-docker ./tradfri-groups.py -a power -g <YOUR_GROUP_ID> -v on"
alias lights_relax="docker run -ti -e GATEWAY_IP="<YOUR_GATEWAY_IP_HERE>" -e GATEWAY_KEY="<YOUR_GATEWAY_KEY_HERE>" schliflo/tradfri-python-docker ./tradfri-groups.py -a brightness -g <YOUR_GROUP_ID> -v 1"
alias lights_full="docker run -ti -e GATEWAY_IP="<YOUR_GATEWAY_IP_HERE>" -e GATEWAY_KEY="<YOUR_GATEWAY_KEY_HERE>" schliflo/tradfri-python-docker ./tradfri-groups.py -a brightness -g <YOUR_GROUP_ID> -v 100"
alias lights_status="docker run -ti -e GATEWAY_IP="<YOUR_GATEWAY_IP_HERE>" -e GATEWAY_KEY="<YOUR_GATEWAY_KEY_HERE>" schliflo/tradfri-python-docker ./tradfri-status.py"
```