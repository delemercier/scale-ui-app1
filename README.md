## Open command promp (_git bash_ preferred):

## One time
```bash
npm uninstall -g degit
npm install -g tiged
```

## App creation
```bash
mkdir your-app
cd your-app
degit https://github.com/delemercier/scale-ui-app1 --force
degit https://github.com/delemercier/scale-ui-leader --force
bash scale-ui-finalize.sh
# git init
npm i
npm run dev
# navigate to http://localhost:3000/your-app
```

## Reload leader code
```bash
degit https://github.com/delemercier/scale-ui-leader --force
bash scale-ui-finalize.sh
```

## Help
### Rename with specific app name
```bash
bash scale-ui-finalize.sh your-new-app
```

### Get leader specific git branch
```bash
degit https://github.com/delemercier/scale-ui-leader#main --force
```
