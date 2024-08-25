bash tricks

# dont allow commiting to main branch

```sh
#!/bin/sh

branch="$(git rev-parse --abbrev-ref HEAD)"

if [ "$branch" = "main" ]; then
  echo "Hello from .git/hooks/pre-commit"
  echo "You can't commit directly to main branch."
  exit 1
fi
```

save that to `.git/hooks/pre-commit`
