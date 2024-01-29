package com.example.YoutubemusicSpringbootApp.controller;

import com.example.YoutubemusicSpringbootApp.entity.PlaylistsByCategory;

class PlaylistResponse {
    private PlaylistsByCategory playlists;


    public PlaylistsByCategory getPlaylists() {
        return playlists;
    }

    public void setPlaylists(PlaylistsByCategory playlists) {
        this.playlists = playlists;
    }
}