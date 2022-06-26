open command promp (git bash preferred):

```
mkdir your-app
cd your-app
degit https://github.com/delemercier/scale-ui-app1 --force
degit https://github.com/delemercier/scale-ui-leader --force

# open git bash in the folder
bash scale-ui-finalize.sh
# you can also rename folders with a specific name
# bash scale-ui-finalize.sh your-new-app
npm i
npm run dev
```
