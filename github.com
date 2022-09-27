language: python 
  
 python: 
   - "3.6" 
  
 script: 
   - python sort.py 
   - cp README.md docs/index.md 
   - mkdocs build 
  
 deploy: 
   provider: pages 
   local-dir: site 
   skip-cleanup: true 
   keep-history: true 
   github-kode: $GITHUB_KODE 
   on: 
     branch: master
