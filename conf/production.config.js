export default {
  'adapt-authoring-assets': {
    maxFileSize: '500MB'
  },
  'adapt-authoring-core': {
    dataDir: '/home/ADAPT/data',
    tempDir: '/home/ADAPT/temp'
  },
  'adapt-authoring-localauth': {
    initialSuperUserEmail: 'dev@kineo.com'
  },
  'adapt-authoring-server': {
    host: '0.0.0.0',
    port: process.env.PORT,
    verboseErrorLogging: true
  }
}
