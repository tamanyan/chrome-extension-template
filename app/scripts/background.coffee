'use strict';

chrome.runtime.onInstalled.addListener (details) ->
  console.log('previousVersion', details.previousVersion)

chrome.browserAction.setBadgeText({text: '\'Allo'})

chrome.tabs.onCreated.addListener (tab) ->
  console.log tab

chrome.tabs.onUpdated.addListener (tabId, changeInfo, tab) ->
  console.log tabId, changeInfo, tab
