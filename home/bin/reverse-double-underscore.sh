#!/bin/sh
read -r -d '' SCRIPT <<'JS'
const readline = require('readline')
const rl = readline.createInterface({
  input: process.stdin,
})
rl.on('line', line => {
  const begin_dollar_underscore = /^\$_[^_]/.test(line)
  const begin_dollar = /^\$/.test(line)
  const begin_underscore = /^_[^_]/.test(line)
  console.log(
    `${begin_dollar_underscore ? '$_' : begin_dollar ? '$' : begin_underscore ? '_' : ''}${
      (
        begin_dollar_underscore ? line.replace(/^\$_/, '')
          : begin_dollar ? line.replace(/^\$/, '')
          : begin_underscore ? line.replace(/^_/, '')
          : line
      )
        .split('__')
        .filter(v => v)
        .reverse()
        .join('_')
        .trim()
    }`
  )
})
  .on('close', () => process.exit(0))
JS
xsel -b | node -e "$SCRIPT" | tr -d '\n' | xsel -b
