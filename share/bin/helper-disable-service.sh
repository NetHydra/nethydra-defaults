#!/usr/bin/bash

set -e

echo "Disable unwanted service..."
for service in $(cat /usr/share/hydrapwk-defaults/service-to-disable); do
	/usr/bin/systemctl --quiet disable "$service" >/dev/null 2>&1 || true
	/usr/bin/systemctl --quiet stop "$service" >/dev/null 2>&1 || true
done
