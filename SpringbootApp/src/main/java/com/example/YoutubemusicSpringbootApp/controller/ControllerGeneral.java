package com.example.YoutubemusicSpringbootApp.controller;

import com.example.YoutubemusicSpringbootApp.Strings.GeneralStrings;
import com.example.YoutubemusicSpringbootApp.entity.*;
import com.example.YoutubemusicSpringbootApp.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;
import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/v1")
public class ControllerGeneral {

    @Autowired
    private PlaylistRepository playlistRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @Autowired
    private PlaylistsByCategoryRepository playlistsByCategoryRepository;

    @GetMapping("/browse/categories")
    public ApiCategoriesResp findAllCategories() {
        List<Category> categoryList = (List<Category>) categoryRepository.findAll();

        Categories categories = new Categories();
        categories.setItems(categoryList);
        categories.setHref(GeneralStrings.domainName +   "/v1/browse/categories");

        ApiCategoriesResp apiCategoriesResp = new ApiCategoriesResp();
        apiCategoriesResp.setCategoriesResponse(categories);

        return apiCategoriesResp;
    }

    @GetMapping("/browse/categories/{category_id}")
    public ResponseEntity<Category> findCategoryItem(@PathVariable(value = "category_id") String id){
        if (categoryRepository.findById(id).isPresent()){
            return ResponseEntity.ok().body(categoryRepository.findById(id).get());
        } else {
            return ResponseEntity.notFound().build();
        }
    }
    @GetMapping("/browse/categories/{category_id}/playlists")
    public ResponseEntity<PlaylistResponse> findAllPlaylistByCategory(@PathVariable(value = "category_id") String id) {

        PlaylistResponse playlistResponse = new PlaylistResponse();

        if (playlistsByCategoryRepository.findById(id).isPresent()){
            playlistResponse.setPlaylists(playlistsByCategoryRepository.findById(id).get());
            return ResponseEntity.ok().body(playlistResponse);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @GetMapping("/playlists")
    public List<Playlist> findAllPlaylist() {
        return (List<Playlist>) playlistRepository.findAll();
    }

    @GetMapping("/playlists/{playlist_id}")
    public ResponseEntity<Playlist> findPlaylistById(@PathVariable(value ="playlist_id") String id){
        Optional<Playlist> optionalPlaylist = playlistRepository.findById(id);
        if (optionalPlaylist.isPresent()){
            return ResponseEntity.ok().body(optionalPlaylist.get());
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @Autowired
    PlaylistTracksRepository playlistTracksRepository;
    @GetMapping("/playlists/{playlist_id}/tracks")
    public ResponseEntity<PlaylistTracks> findTracksByPlaylistID(@PathVariable(value = "playlist_id") String id){
        Optional<PlaylistTracks> optionalPlaylistTracks = playlistTracksRepository.findById(id);
        if(optionalPlaylistTracks.isPresent()){
            return ResponseEntity.ok().body(optionalPlaylistTracks.get());
        }else{
            return ResponseEntity.notFound().build();
        }
    }

    @Autowired
    TrackRepository trackRepository;
    @GetMapping("/tracks/{id}")
    public ResponseEntity<Track> findTracksById(@PathVariable(value = "id") String id) {
        Optional<Track> optionalTrack = trackRepository.findById(id);
        if(optionalTrack.isPresent()){
            return ResponseEntity.ok().body(optionalTrack.get());
        }else{
            return ResponseEntity.notFound().build();
        }
    }

    @Autowired
    private RawDataRepository rawDataRepository;

    @PostMapping("/tracks/upload")
    public String uploadTrack(@RequestParam("file") MultipartFile file) {
        try {
            System.out.println("called");
            RawData music = new RawData();
            music.setUrl(file.getOriginalFilename());

            Blob musicBlob = new SerialBlob(file.getBytes());
            music.setData(musicBlob); // Save music data as a BLOB

            rawDataRepository.save(music);

            return "File uploaded and saved to the database successfully";
        } catch (IOException e) {
            e.printStackTrace();
            return "File upload and database save failed";
        } catch (Exception ex) {
            ex.printStackTrace();
            return "Error converting file to Blob or saving to the database";
        }
    }

//    @GetMapping("tracks/fetcher/{id}")
//    public ResponseEntity<Resource> downloadMusicFile(@PathVariable String id) {
//        RawData musicFile = rawDataRepository.findById(id).orElse(null);
//        try {
//            if (musicFile != null) {
//                Blob blob = musicFile.getData();
//                byte[] blobData = blob.getBytes(1, (int) blob.length());
//                ByteArrayResource resource = new ByteArrayResource(blobData);
//                HttpHeaders headers = new HttpHeaders();
//                headers.add(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=" + musicFile.getUrl());
//                return ResponseEntity.ok()
//                        .headers(headers)
//                        .contentLength(musicFile.getData().length())
//                        .contentType(MediaType.parseMediaType(musicFile.getContentType()))
//                        .body(resource);
//            } else {
//                return ResponseEntity.notFound().build();
//            }
//        }catch (Exception ex){
//            ex.printStackTrace();
//            return null;
//        }
//    }
}

