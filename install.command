#!/usr/bin/env bash
cd "$(dirname "$0")" || exit

rsync -av --delete Import\ into\ Resolve.workflow/ ~/Library/Services/Import\ into\ Resolve.workflow/
rsync -av --delete resolve_auto_import/ ~/Library/Services/resolve_auto_import/