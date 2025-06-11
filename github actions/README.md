### Git hub actions structure

- Wrokflow --> contains one or more job and define the trigger
- Jobs --> contain one or more stpes, define where to run (ubutun vm, mac os)
- Steps --> tasks or actions that make up a job, are executed squentially.

Term *action* --> are prebuild reusable automation componentes design for specifica tasks, can be created by you or other memebers in your community.

### STEPS
1. CREATE A FILE AND A FOLDER ``.github/workflows``
2. DEFINE THE GITHUB ACTION
```yaml
name: my-first-workflow
on: push # defining the trigger , whenever anything is pushed to the repo this will be executed

jobs:
  first-job: # job name
    runs-on: ubuntu-latest # define where the job runs
    steps:
      - name: Welcome message # step name 
        run: echo "My first Github Actions Job"
        
      - name: list files # step name
        run: ls # action to list files
      - name: checkout Repo
        uses: actions/checkout@v2
```

### Multiple command single step
```yaml
obs:
  first-job: # job name
    runs-on: ubuntu-latest # define where the job runs
    steps:

      - name: checkout Repo
        uses: actions/checkout@v2

      - name: list and read # step name 
        run: |
          echo "My first Github Actions Job"
          ls
          cat Readme.md
      

```