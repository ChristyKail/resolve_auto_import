-- sst: post-step

function onFinish(assets, resources, workingPath, success) -- ([Asset], [FileResource], String, Bool) -> (String, ...)
  local safePath = workingPath:gsub('"', '\\"')
  local home = os.getenv("HOME")
  local script = home .. "/Library/Services/resolve_auto_import/resolve_auto_import.py"
  os.execute('python3 "' .. script .. '" "' .. safePath .. '"')
end